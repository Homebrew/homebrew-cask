cask "better-and-better" do
  version "2.5.1Beta"
  sha256 "fa6606e91a99dbd726cfb51e07e21e8c12af6b01a691443e9ef1b3ad1fafea9c"

  url "https://cdn.better365.cn/BetterAndBetter/BetterAndBetter#{version}.dmg"
  name "BetterAndBetter"
  desc "Keyboard, Mouse, Touchpad"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    # url "https://www.better365.cn/bab2.html"
    # regex(/href="https\:\/\/cdn\.better365\.cn\/BetterAndBetter\/BetterAndBetter(\d+(?:\.\d+)+\w*)\.dmg"/i)
    skip "No version information available"
  end

  pkg "BetterAndBetter#{version}.pkg"

  uninstall pkgutil:   [
    "cn.better365.BetterAndBetter",
    "cn.better365.BetterAndBetterHelper",
  ], launchctl: [
    "cn.better365.BetterAndBetterHelper",
  ], quit: [
    "cn.better365.BetterAndBetter",
  ]

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
  ]
end
