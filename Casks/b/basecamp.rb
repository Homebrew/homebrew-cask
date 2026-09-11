cask "basecamp" do
  version "5.1.5"
  sha256 "aa319d36950f5470fda77d62b5b6e91f61faf34ce41c5707e31b2a51a0ae08b7"

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
