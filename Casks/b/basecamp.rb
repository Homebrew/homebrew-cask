cask "basecamp" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3"
  sha256 arm:   "a26fe02d79299f2f7feb444dbecb6cbd1c47416bf6eff774be42cf0264deda6c",
         intel: "5e2af7ae9060c183036ccf02179bc9494b9b30d8bec2da72432df5fb2ce7d404"

  url "https://basecamp.com/desktop/Basecamp-#{version}-mac-#{arch}.zip"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://basecamp.com/"

  # This file is served with a `Content-Encoding: aws-chunked` header when
  # compression is requested but that causes curl to error because it doesn't
  # understand what decompression to apply.
  livecheck do
    url "https://basecamp.com/desktop/latest-mac.yml",
        compressed: false
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Basecamp.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
