cask "treesheets" do
  version "3.3.0,13875814719"
  sha256 "719f13bd1c5d6e568c888d617a2559e67a6d0847b81ebc7901e4f254c68058d7"

  url "https://github.com/aardappel/treesheets/releases/download/#{version.csv.second}/TreeSheets-#{version.csv.first}-Darwin.dmg",
      verified: "github.com/aardappel/treesheets/"
  name "TreeSheets"
  desc "Hierarchical spreadsheet and outline application"
  homepage "https://strlen.com/treesheets/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)*)/TreeSheets[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "TreeSheets.app"

  uninstall quit: "dot3labs.TreeSheets"

  zap trash: [
    "~/Library/Preferences/dot3labs.TreeSheets.plist",
    "~/Library/Preferences/TreeSheets Preferences",
    "~/Library/Saved Application State/dot3labs.TreeSheets.savedState",
  ]
end
