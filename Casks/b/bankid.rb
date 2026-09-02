cask "bankid" do
  version "7.17.0"
  sha256 "066680f7c97deca66e319262def3c54ca0fbd9bf4f628dd1c90cb1ad4f3889fd"

  url "https://cdn.bankid.com/bisp/mac/BankID_installation_#{version.dots_to_underscores}.pkg"
  name "BankID Security Application (Sweden)"
  desc "Swedish personal electronic identification (eID) system"
  homepage "https://install.bankid.com/"

  livecheck do
    skip "Cannot be fetched due to Microsoft validate perfdrive protections"
  end

  depends_on :macos

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"

  zap trash: "~/Library/Application Support/BankID"
end
