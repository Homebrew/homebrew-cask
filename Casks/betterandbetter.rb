cask "betterandbetter" do
  version "2.5.4"
  sha256 "21451d409759bbf078a5478a824ad26824d8bf4b94b7d4a01d824c5191a9b857"

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
