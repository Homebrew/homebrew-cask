cask "kkterm" do
  version "3000.0.18"
  sha256 "986ee171d06cc071e2a450c44ae7673c00d7c52a9be5df958f8f14052708cce2"

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
