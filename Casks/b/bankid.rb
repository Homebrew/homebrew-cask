cask "bankid" do
  version "7.15.0"
  sha256 "927d6a1f856e3028ee8c67c9f2e37e84e904831d4e5c7a551f82c0736d71849f"

  url "https://cdn.bankid.com/bisp/mac/BankID_installation_#{version.dots_to_underscores}.pkg"
  name "BankID Security Application (Sweden)"
  desc "Swedish personal electronic identification (eID) system"
  homepage "https://install.bankid.com/"

  livecheck do
    url "https://install.bankid.com/api/file-download/Mac"
    strategy :extract_plist
  end

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"

  zap trash: "~/Library/Application Support/BankID"
end
