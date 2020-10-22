cask "lastpass" do
  version "4.59.0"
  sha256 "ca217c5d6ad37de63e515e0335686553f5799dd7b380b949c57d28025f3933e9"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
