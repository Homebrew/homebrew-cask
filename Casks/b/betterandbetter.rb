cask "betterandbetter" do
  version "2.6.0"
  sha256 "2ce312fd95032b8aed75183898c7551b6d0a70f56985f9e9a4a2d678e3314654"

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
