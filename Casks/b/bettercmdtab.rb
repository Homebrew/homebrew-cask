cask "bettercmdtab" do
  version "26.5.1,20260613051735"
  sha256 "2de73f3189029150a87d45e36926c371b2e1550ad4741b98a4ad4c2204d9b323"

  url "https://github.com/rokartur/BetterCmdTab/releases/download/v#{version.csv.first}/BetterCmdTab-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/rokartur/BetterCmdTab/"
  name "BetterCmdTab"
  desc "Replacement for the built-in Cmd+Tab app switcher"
  homepage "https://bettercmdtab.app/"

  livecheck do
    url :url
    regex(/BetterCmdTab-(\d+(?:\.\d+)+)-(\d+)\.dmg$/i)
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
