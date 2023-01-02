cask "iterm2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  on_high_sierra :or_older do
    version "3.3.12"
    sha256 "6811b520699e8331b5d80b5da1e370e0ed467e68bc56906f08ecfa986e318167"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "3.4.19"
    sha256 "e06563714ea0582f8a69653ef5024957483c174d7387b0e8d70369db98406832"

    livecheck do
      # workaround for
      # - https://github.com/Homebrew/homebrew-cask/pull/104019
      # - https://github.com/gnachman/iterm2-website/issues/82
      # url "https://iterm2.com/appcasts/final_modern.xml"
      url "https://raw.githubusercontent.com/gnachman/iterm2-website/master/source/appcasts/final_modern.xml"
      strategy :sparkle
    end
  end

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://www.iterm2.com/"

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/iterm2-beta",
    "homebrew/cask-versions/iterm2-legacy",
    "homebrew/cask-versions/iterm2-nightly",
  ]
  depends_on macos: ">= :catalina"

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
