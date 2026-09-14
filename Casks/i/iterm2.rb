cask "iterm2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3.7.1"
  sha256 "ed5c0f623e584cddc123f87d8bda90cf4d1d18dbbae2b9b0e85939f989c640b0"

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://iterm2.com/"

  livecheck do
    # workaround for
    # - https://github.com/Homebrew/homebrew-cask/pull/104019
    # - https://github.com/gnachman/iterm2-website/issues/82
    # url "https://iterm2.com/appcasts/final_modern.xml"
    url "https://raw.githubusercontent.com/gnachman/iterm2-website/master/source/appcasts/final_modern.xml"
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
