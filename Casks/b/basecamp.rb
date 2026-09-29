cask "basecamp" do
  version "5.2.0"
  sha256 "5a32de720a09fc1b46e61710af40e41e3298275e0d3330adad0f2aad0dc7807c"

  url "https://basecamp.com/desktop/Basecamp-#{version}-mac.zip"
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
