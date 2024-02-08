cask "safeincloud-password-manager" do
  version "24.1.0,2401000"
  sha256 :no_check

  url "https://www.safe-in-cloud.com/download/SafeInCloud.dmg"
  name "SafeInCloud Password Manager"
  desc "Cross-platform AES-256 password manager"
  homepage "https://www.safe-in-cloud.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SafeInCloud Password Manager.app"
end
