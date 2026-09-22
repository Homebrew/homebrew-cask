cask "kkterm" do
  version "3000.0.17"
  sha256 "a9797a44368214a6ae78ee23257f3cf37736c809c811338babad616a72750d01"

  url "https://github.com/ryantsai/KKTerm/releases/download/v#{version}/kkterm-#{version}-macos-universal.dmg"
  name "KKTerm"
  desc "Local-first administration workspace for terminals, SSH, and SFTP"
  homepage "https://github.com/ryantsai/KKTerm"

  auto_updates true
  depends_on :macos

  app "KKTerm.app"

  zap trash: [
    "~/Library/Application Support/com.kkterm.app",
    "~/Library/Caches/com.kkterm.app",
    "~/Library/Preferences/com.kkterm.app.plist",
    "~/Library/Saved Application State/com.kkterm.app.savedState",
  ]
end
