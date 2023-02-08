cask "bankid" do
  version "7.13.1"
  sha256 "9e7f4385ade152ec82d89f56adfa7e48a4625e3ff8cd6a80ee38d8e1649b9da2"

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
