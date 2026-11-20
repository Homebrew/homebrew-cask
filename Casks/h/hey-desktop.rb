cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.3.10"
  sha256 arm:   "63aab4bd632d837697e29b2a0d4278a1b73a02c8710867b22db4b788a276e754",
         intel: "4d9e1f55b7f346e8d02556808737402d2ce4f9e7cc6a3504b394c2262ab1ebdf"

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
