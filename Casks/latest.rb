cask "latest" do
  version "0.8.2,736"
  sha256 "875d1482ce69676065a794b508b34275b3d99715d3ce9eb74eb025e4b6a2d71c"

  url "https://max.codes/latest/#{version.csv.first}.zip"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  livecheck do
    url "https://max.codes/latest/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Latest.app"

  zap trash: [
    "~/Library/Caches/com.max-langer.Latest",
    "~/Library/Cookies/com.max-langer.Latest.binarycookies",
    "~/Library/Preferences/com.max-langer.Latest.plist",
    "~/Library/Saved Application State/com.max-langer.Latest.savedState",
  ]
end
