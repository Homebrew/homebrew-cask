cask "bettercmdtab" do
  version "26.6.1,20260703123053"
  sha256 "7b95e0d033160143ccfa42d7204e807c8a8e8fe5dbb270f55f793c43c9974136"

  url "https://github.com/rokartur/BetterCmdTab/releases/download/v#{version.csv.first}/BetterCmdTab-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/rokartur/BetterCmdTab/"
  name "BetterCmdTab"
  desc "Replacement for the built-in Cmd+Tab app switcher"
  homepage "https://bettercmdtab.app/"

  livecheck do
    url :url
    regex(/BetterCmdTab[._-]v?(\d+(?:\.\d+)+)-(\d+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: :ventura

  app "BetterCmdTab.app"

  zap trash: [
    "~/Library/Application Support/pro.bettercmdtab.BetterCmdTab",
    "~/Library/Caches/pro.bettercmdtab.BetterCmdTab",
    "~/Library/Preferences/pro.bettercmdtab.BetterCmdTab.plist",
  ]
end
