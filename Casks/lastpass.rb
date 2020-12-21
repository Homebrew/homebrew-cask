cask "lastpass" do
  version "4.60.0,1121"
  sha256 :no_check

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  livecheck do
    url "https://download.cloud.lastpass.com/mac/AppCast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
