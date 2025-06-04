cask "betterdisplay" do
  on_big_sur :or_older do
    version "1.4.15"
    sha256 "26a75c3a4e95b076dcb7468e6ce9f9493675e4a9676fd267e5b32459db900077"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "2.3.9"
    sha256 "3ee043fd5893ab354efbc4c9a92295a21b365e55af34cc64612255878b746722"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.5.6"
    sha256 "fbfdaac8699245db60260ecd4dc0d0644e3639774c20e45e2f548bd6a751f2bb"

    livecheck do
      url "https://betterdisplay.pro/betterdisplay/sparkle/appcast.xml"
      strategy :sparkle do |items|
        items.find { |item| item.channel.nil? }&.short_version
      end
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

  uninstall quit:       "pro.betterdisplay.BetterDisplay",
            login_item: "BetterDisplay"

  zap trash: [
    "~/Library/Application Support/BetterDisplay",
    "~/Library/Application Support/BetterDummy",
    "~/Library/Caches/pro.betterdisplay.BetterDisplay",
    "~/Library/Caches/SentryCrash/BetterDisplay",
    "~/Library/HTTPStorages/pro.betterdisplay.BetterDisplay",
    "~/Library/HTTPStorages/pro.betterdisplay.BetterDisplay.binarycookies",
    "~/Library/Preferences/pro.betterdisplay.BetterDisplay.plist",
  ]
end
