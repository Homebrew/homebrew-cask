cask "betterandbetter" do
  version "2.5.7"
  sha256 "83018bef36848a2ea6475d225aff1cf0c4720d53fccc4142908dcb9716c13065"

  url "https://cdn.better365.cn/BetterAndBetter/BetterAndBetter#{version}Beta.dmg"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    strategy :sparkle, &:short_version
  end

  pkg "BetterAndBetter#{version}Beta.pkg"

  uninstall launchctl: "cn.better365.BetterAndBetterHelper",
            quit:      "cn.better365.BetterAndBetter",
            pkgutil:   [
              "cn.better365.BetterAndBetter",
              "cn.better365.BetterAndBetterHelper",
            ]

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
  ]
end
