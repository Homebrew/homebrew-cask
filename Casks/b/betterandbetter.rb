cask "betterandbetter" do
  version "2.6.3,2024121203"
  sha256 "a0ba2bb8942780a9ca134ac2f4864f18832f64e3a574361e4aa3ecf0636308d8"

  url "https://cdn.better365.cn/BetterAndBetter/#{version.csv.second[0, 4]}/BetterAndBetter#{version.csv.first}_#{version.csv.second}.zip"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "BetterAndBetter.app"

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
  ]
end
