cask "iterm2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3.7.6"
  sha256 "bb6102e9f57bbe41979ba7c7b1c25d4112e9a5c2142606eeccbe18dc7ee0706f"

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://iterm2.com/"

  livecheck do
    url "https://iterm2.com/appcasts/final_modern.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: [
    "iterm2@beta",
    "iterm2@nightly",
  ]
  depends_on macos: :ventura

  app "iTerm.app"

  uninstall quit: "com.googlecode.iterm2"

  zap trash: [
    "~/Library/Application Scripts/com.googlecode.iterm2.iTermFileProvider",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.itermai.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
    "~/Library/Application Support/iTerm",
    "~/Library/Application Support/iTerm2",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/Containers/com.googlecode.iterm2.iTermFileProvider",
    "~/Library/Containers/iTermAI",
    "~/Library/Cookies/com.googlecode.iterm2.binarycookies",
    "~/Library/HTTPStorages/com.googlecode.iterm2",
    "~/Library/HTTPStorages/com.googlecode.iterm2.binarycookies",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Preferences/com.googlecode.iterm2.private.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2*.savedState",
    "~/Library/WebKit/com.googlecode.iterm2",
  ]
end
