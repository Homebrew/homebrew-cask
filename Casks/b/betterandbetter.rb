cask "betterandbetter" do
  version "2.6.7,2025031501"
  sha256 "e104b1229e41762063f419bc7ef1f081fd9e5a80d6aff9c0cb30509332a6b6f0"

  url "https://cdn.better365.cn/BetterAndBetter/#{version.csv.second[0, 4]}/BetterAndBetter_#{version.csv.first}_#{version.csv.second}.zip"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    strategy :sparkle do |item|
      "#{item.short_version.strip},#{item.version.strip}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "BetterAndBetter.app"

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
  ]
end
