cask "betterandbetter" do
  version "2.5.1"
  sha256 "fa6606e91a99dbd726cfb51e07e21e8c12af6b01a691443e9ef1b3ad1fafea9c"

  url "https://cdn.better365.cn/BetterAndBetter/BetterAndBetter#{version}Beta.dmg"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    strategy :sparkle, &:short_version
  end

  pkg "BetterAndBetter#{version}Beta.pkg"

  uninstall pkgutil:   [
              "cn.better365.BetterAndBetter",
              "cn.better365.BetterAndBetterHelper",
            ],
            launchctl: "cn.better365.BetterAndBetterHelper",
            quit:      "cn.better365.BetterAndBetter"

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
  ]
end
