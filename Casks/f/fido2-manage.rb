cask "fido2-manage" do
  version "0.2"
  sha256 :no_check

  url "https://www.token2.swiss/soft/fido2-manage.dmg"
  name "fido2-manage"
  desc "FIDO2.1 Security Key Management Tool"
  homepage "https://www.token2.swiss/site/page/fido2-1-security-key-management-tool-for-macos-user-guide"

  depends_on macos: ">= :big_sur"

  app "fido2-manage.app"
end
