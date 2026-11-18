cask "iterm2@nightly" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3_7_20261118"
  sha256 "d52e6c5b67ea2fbd7bee1f1a12a2bcd8b39e720f18ff424feb4736c0a8a232dc"

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://iterm2.com/"

  livecheck do
    url "https://iterm2.com/nightly/latest"
    strategy :header_match
  end

  conflicts_with cask: [
    "iterm2",
    "iterm2@beta",
  ]
  depends_on macos: :ventura

  app "iTerm.app"

  uninstall quit: "com.googlecode.iterm2"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
    "~/Library/Application Support/iTerm",
    "~/Library/Application Support/iTerm2",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/HTTPStorages/com.googlecode.iterm2",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Preferences/com.googlecode.iterm2.private.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
    "~/Library/WebKit/com.googlecode.iterm2",
  ]
end
