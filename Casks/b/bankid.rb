cask "bankid" do
  version "7.14.2"
  sha256 "52da38b2509cb0f457c096dca01ee2390359cdbc365e4d43552fb72ef7bec1a2"

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
