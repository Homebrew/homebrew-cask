cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.3.6"
  sha256 arm:   "81a10fc4901c7f402d583eaf2fc71c0b4cc2fbd42287d434b4b1ba43037c5a2b",
         intel: "bff544af4559384b1780c9090b5da9972b6b96e54c3376c764ab116fd9139f6e"

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
