cask "bettercmdtab" do
  version "26.6,20260702140005"
  sha256 "6211d6413355bac99ab17d0d3f7de7d616d7687c45ca75fb65fa11fb9d30dd96"

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
