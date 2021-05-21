cask "safeincloud-password-manager" do
  version "21.0.5,210005"
  sha256 :no_check

  url "https://www.safe-in-cloud.com/download/SafeInCloud.dmg"
  name "SafeInCloud Password Manager"
  homepage "https://www.safe-in-cloud.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "SafeInCloud Password Manager.app"
end
