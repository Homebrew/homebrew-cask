cask "betterdisplay" do
  on_big_sur :or_older do
    version "1.4.15"
    sha256 "26a75c3a4e95b076dcb7468e6ce9f9493675e4a9676fd267e5b32459db900077"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "2.3.8"
    sha256 "e7e5e04f7c6380418b927c46967c346e09b5a4e29d8f4aa7aa5f64c52d9e76f4"

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
  depends_on macos: ">= :mojave"

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
