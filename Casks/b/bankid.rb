cask "bankid" do
  version "7.15.2"
  sha256 "ed0025040c89d72b02d646771132fcbfd46f15dbfc42134bc9ccf60456e04462"

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
