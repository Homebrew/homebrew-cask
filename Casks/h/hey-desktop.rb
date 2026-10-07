cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.3.8"
  sha256 arm:   "f42199e3d1c1f46a702726d9165b0fa3681d02f0190a8a199c847d1eba9852c0",
         intel: "b50ff39fb0653b0ea47b6d3435a85e4931fcd0e7199123c3b0e143d496442128"

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
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
