cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.3.9"
  sha256 arm:   "62e5b1990adb002ff33075e968f7459067893bbb8abcf7d71993d9a3ed538fe3",
         intel: "a4a1ca01a50ed10352a3801c784a9b54e04732f92209a810b88a27ffdaaa9224"

  url "https://hey.com/desktop/HEY-#{version}#{arch}-mac.zip"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  # This file is served with a `Content-Encoding: aws-chunked` header when
  # compression is requested but that causes curl to error because it doesn't
  # understand what decompression to apply.
  livecheck do
    url "https://hey.com/desktop/latest-mac.yml",
        compressed: false
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hey.app.desktop.sfl*",
    "~/Library/Application Support/HEY",
    "~/Library/Logs/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
