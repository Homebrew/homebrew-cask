cask "bettercmdtab@beta" do
  version "26.8-beta.2,20260923192047"
  sha256 "f436fcc87355ea3aecfa8204db94090e7790fa55e88fcfc024d92bddfacad0c8"

  url "https://github.com/rokartur/BetterCmdTab/releases/download/#{version.csv.first}/BetterCmdTab-#{version.csv.first}-#{version.csv.second}.dmg"
  name "BetterCmdTab"
  desc "Replacement for the built-in Cmd+Tab app switcher"
  homepage "https://bettercmdtab.app/"

  livecheck do
    url :url
    regex(/BetterCmdTab[._-]v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)-(\d+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  conflicts_with cask: "bettercmdtab"
  depends_on macos: :ventura

  app "BetterCmdTab.app"

  zap trash: [
    "~/Library/Application Support/pro.bettercmdtab.BetterCmdTab",
    "~/Library/Caches/pro.bettercmdtab.BetterCmdTab",
    "~/Library/Preferences/pro.bettercmdtab.BetterCmdTab.plist",
  ]
end
