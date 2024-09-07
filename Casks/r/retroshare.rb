cask "retroshare" do
  version "0.6.7.2,0.6.7a,0c03e93a4-01-03-2024,10.15.7,5.15.11"
  sha256 "6757a0bffba36fd85515117edba7e821bb3105500f8a282be942abeee3373230"

  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version.csv.first}/RetroShare-#{version.csv.second}-#{version.csv.third}-MacOS-#{version.csv.fourth}-Qt-#{version.csv.fifth}.dmg",
      verified: "github.com/RetroShare/RetroShare/"
  name "RetroShare"
  desc "Friend-2-Friend and secure decentralised communication platform"
  homepage "https://retroshare.cc/"

  livecheck do
    url :url
    regex(/
          Retroshare[._-]
          (\d+(?:\.\d+)+[a-z]?)[._-]
          ([\h-]+)[._-]
          MacOS[._-]
          (\d+(?:\.\d+)+)[._-]
          Qt[._-]
          (\d+(?:\.\d+)+)\.dmg$
          /xi)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        tag_version = release["tag_name"][/^v?(\d+(?:\.\d+)+)$/i, 1]
        next if tag_version.blank?

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{tag_version},#{match[1]},#{match[2]},#{match[3]},#{match[4]}"
        end
      end.flatten
    end
  end

  app "retroshare.app"

  caveats do
    requires_rosetta
  end
end
