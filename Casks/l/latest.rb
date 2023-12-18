cask "latest" do
  version "0.10.2"
  sha256 "4382a2e2c923334cefa5fc7f749021e4b7e0dc158011ad9ee509efc4c532c8ca"

  url "https://max.codes/latest/#{version}.zip"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  livecheck do
    url "https://max.codes/latest/update.xml"
    strategy :sparkle, &:short_version
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
