cask "latest" do
  version "0.10.1"
  sha256 "55b7c391893e5fcb724017f9a09ae546eda4dede95ef6e3646082079193f2d29"

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
