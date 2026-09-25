cask "kkterm" do
  version "3000.0.19"
  sha256 "03dfce402ce30b47cd727ad01a03156b51e7d53f35f1351eafadd469dc61d21a"

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
