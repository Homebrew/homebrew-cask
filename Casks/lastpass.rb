cask "lastpass" do
  version "4.56.1"
  sha256 "f658b6e2f11d3ee3c54ce3a07bb413f10e71a61f4f93f0e8544f68e88ceab34a"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
