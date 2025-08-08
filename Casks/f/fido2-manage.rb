cask "fido2-manage" do
  version "0.2"
  sha256 :no_check

  url "https://www.token2.swiss/soft/fido2-manage.dmg"
  name "FIDO2.1 Security Key Management Tool"
  desc "Manage FIDO2.1 security keys"
  homepage "https://www.token2.swiss/site/page/fido2-1-security-key-management-tool-for-macos-user-guide"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)[ <"]/i)
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "fido2-manage.app"

  zap delete: "/usr/local/bin/fido2-manage",
      trash:  "~/Library/Preferences/com.token2.fido2-manage.plist"

  caveats do
    files_in_usr_local
  end
end
