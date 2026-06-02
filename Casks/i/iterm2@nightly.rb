cask "iterm2@nightly" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3_7_20260602"
  sha256 "9ccb8f415fe270b4d304797a2995bd4677b59e804a461809a628ff5c36d7791c"

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
  depends_on macos: :monterey

  app "iTerm.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
    "~/Library/Application Support/iTerm",
    "~/Library/Application Support/iTerm2",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
  ]
end
