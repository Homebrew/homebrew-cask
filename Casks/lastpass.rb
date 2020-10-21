cask "lastpass" do
  version "4.58.0"
  sha256 "dd78e2dd304ab91cf9e4c6beb69bf63b0e66b4d7eff50e23b4d560c63dba4c71"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
