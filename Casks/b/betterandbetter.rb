cask "betterandbetter" do
  version "2.6.1,2024061301"
  sha256 "c298ed157effc5a8e774d267da3a28aa3d92136e9e69f92a4fbbbeced3934fb2"

  url "https://cdn.better365.cn/BetterAndBetter/BetterAndBetter#{version.csv.second}.zip"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    strategy :sparkle
  end

  app "BetterAndBetter.app"

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
  ]
end
