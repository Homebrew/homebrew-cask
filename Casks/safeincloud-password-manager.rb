cask "safeincloud-password-manager" do
  version "22.1.3,220103"
  sha256 :no_check

  url "https://www.safe-in-cloud.com/download/SafeInCloud.dmg"
  name "SafeInCloud Password Manager"
  desc "Cross-platform AES-256 password manager"
  homepage "https://www.safe-in-cloud.com/"

  app "SafeInCloud Password Manager.app"
end
