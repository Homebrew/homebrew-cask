cask "dosbox-x" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2024.03.01,20240301150043"
    sha256 "e88472dafbb28acaf09343897be94cabcaae9c059d976a24f585cc90d31f00c6"
  end
  on_intel do
    version "2024.03.01,20240301163105"
    sha256 "431a8d18f331f6eeed8333c7be0f9caad211df72c5277773a8ff3c1da659f5c0"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url :url
    regex(%r{/dosbox-x-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
