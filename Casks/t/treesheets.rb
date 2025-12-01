cask "treesheets" do
  version "2810"
  sha256 "db5312266f7633d72e82ab62975d5d98e28ab7334cbaa97b1d13bb5e8293586b"

  url "https://github.com/aardappel/treesheets/releases/download/#{version.csv.second || version.csv.first}/TreeSheets-#{version.csv.first}-Darwin.dmg",
      verified: "github.com/aardappel/treesheets/"
  name "TreeSheets"
  desc "Hierarchical spreadsheet and outline application"
  homepage "https://strlen.com/treesheets/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)*)/TreeSheets[._-]v?(\d+(?:\.\d+)*)(?:[._-]Darwin)?\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "TreeSheets.app"

  uninstall quit: "dot3labs.TreeSheets"

  zap trash: [
    "~/Library/Preferences/dot3labs.TreeSheets.plist",
    "~/Library/Preferences/TreeSheets Preferences",
    "~/Library/Saved Application State/dot3labs.TreeSheets.savedState",
  ]
end
