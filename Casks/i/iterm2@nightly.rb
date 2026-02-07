cask "iterm2@nightly" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3_6_20260207"
  sha256 "7633b4f09bf2a8d5bd192be09de96d4d09418ab62f6dffefea9a01e48f4d9496"

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
  depends_on macos: ">= :monterey"

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
