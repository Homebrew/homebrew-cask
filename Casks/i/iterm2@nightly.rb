cask "iterm2@nightly" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3_5_20250206"
  sha256 "10731a0f8a57ed3f5da1c0d5119e32a11fa575793cb35e195eaf76e78388c10b"

  url "https://iterm2.com/nightly/iTerm2-#{version}-nightly.zip"
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
  depends_on macos: ">= :catalina"

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
