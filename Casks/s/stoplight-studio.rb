cask "stoplight-studio" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0,9584.git-ab7ee89"
  sha256 arm:   "75fccf1fb117da01607a0c210fa6d70d96e8e5faaeb04c4d20f3d8287e6ef087",
         intel: "f176dc945d8797af4a2b145c84a195cd068f2b3fa96560c1712d819d95f6dea9"

  url "https://github.com/stoplightio/studio/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/stoplight-studio-mac-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]mac[._-]#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "Stoplight Studio.app"

  zap trash: [
    "~/Library/Application Support/Stoplight Studio",
    "~/Library/Logs/Stoplight Studio",
    "~/Library/Preferences/com.stoplight.studio.plist",
    "~/Library/Saved Application State/com.stoplight.studio.savedState",
  ]
end
