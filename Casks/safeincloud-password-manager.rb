cask "safeincloud-password-manager" do
  version "21.4.2,210402"
  sha256 "1a47926c8c73abbf6e4246060be9ab081466045c920bd975cd0a6872dca902b9"

  url "https://www.safe-in-cloud.com/download/SafeInCloud.dmg"
  name "SafeInCloud Password Manager"
  desc "Cross-platform AES-256 password manager"
  homepage "https://www.safe-in-cloud.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "SafeInCloud Password Manager.app"
end
