cask "iterm2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  if MacOS.version <= :high_sierra
    version "3.3.12"
    sha256 "6811b520699e8331b5d80b5da1e370e0ed467e68bc56906f08ecfa986e318167"
  else
    version "3.4.17"
    sha256 "583bc015015cdace7d90e9a717a79e6d7ddb5091556ae64c8ec1abb55f243543"
  end

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://www.iterm2.com/"

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
    "homebrew/cask-versions/iterm2-beta",
    "homebrew/cask-versions/iterm2-legacy",
    "homebrew/cask-versions/iterm2-nightly",
  ]
  depends_on macos: ">= :sierra"

  app "iTerm.app"

  zap trash: [
    "~/Library/Application Support/iTerm",
    "~/Library/Application Support/iTerm2",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/Cookies/com.googlecode.iterm2.binarycookies",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
  ]
end
