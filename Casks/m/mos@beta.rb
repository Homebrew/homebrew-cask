cask "mos@beta" do
  version "4.0.0-beta-1201,123826"
  sha256 "c238e3ad61d20b2142a857891165ded7928e0b04e2359a86fb9c9d6ae1ca500a"

  url "https://github.com/Caldis/Mos/releases/download/#{version.csv.first}/Mos.Versions.#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  livecheck do
    url :url
    regex(/Mos\.Versions\.v?(\d+(?:\.\d+)+-beta-\d+)[._-](\d+)\.zip/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten.compact
    end
  end

  conflicts_with cask: "mos"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
