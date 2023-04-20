cask "bankid" do
  version "7.14.0"
  sha256 "30fc256596af824de7c3ad9acf2e05dd118d9c85064ae54d62aab79b61139ce2"

  url "https://cdn.bankid.com/bisp/mac/BankID_installation_#{version.dots_to_underscores}.pkg"
  name "BankID"
  desc "Electronic personal identification system"
  homepage "https://install.bankid.com/"

  livecheck do
    url "https://install.bankid.com/api/file-download/Mac"
    strategy :header_match
  end

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"
end
