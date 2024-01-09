cask "bankid" do
  version "7.14.1"
  sha256 "98be02f71f182f1cb04417cc8325edc224b36c8455c8928e632e9fcaf5c6a5d9"

  url "https://cdn.bankid.com/bisp/mac/BankID_installation_#{version.dots_to_underscores}.pkg"
  name "BankID Security Application (Sweden)"
  desc "Swedish BankID is a personal electronic identification (eID) system"
  homepage "https://install.bankid.com/"

  livecheck do
    url "https://install.bankid.com/api/file-download/Mac"
    strategy :extract_plist
  end

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"

  zap trash: "~/Library/Application Support/BankID"
end
