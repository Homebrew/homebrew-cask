cask "betterdisplay" do
  on_big_sur :or_older do
    version "1.4.15"
    sha256 "26a75c3a4e95b076dcb7468e6ce9f9493675e4a9676fd267e5b32459db900077"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :monterey"
  end
  on_monterey :or_newer do
    version "2.1.2"
    sha256 "b0f93b9dd3b96dc5d119c886a8b8bae5d8bafc636f34992e05c701e41f3a6e6e"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/waydabber/BetterDisplay/releases/download/v#{version}/BetterDisplay-v#{version}.dmg",
      verified: "github.com/waydabber/BetterDisplay/"
  name "BetterDisplay"
  desc "Display management tool"
  homepage "https://betterdisplay.pro/"

  auto_updates true

  app "BetterDisplay.app"

  uninstall quit: "pro.betterdisplay.BetterDisplay"

  zap trash: [
    "~/Library/Application Support/BetterDisplay",
    "~/Library/Application Support/BetterDummy",
    "~/Library/Caches/pro.betterdisplay.BetterDisplay",
    "~/Library/HTTPStorages/pro.betterdisplay.BetterDisplay",
    "~/Library/HTTPStorages/pro.betterdisplay.BetterDisplay.binarycookies",
    "~/Library/Preferences/pro.betterdisplay.BetterDisplay.plist",
  ]
end
