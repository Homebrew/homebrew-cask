cask "bankid" do
  version "7.12.1"
  sha256 "022122b1644f54113b1dd6678a4cd037cd4a6fcf8f6250e1fffc5ce81f4ffebc"

  url "https://cdn.bankid.com/bisp/mac/BankID_installation_#{version.dots_to_underscores}.pkg"
  name "BankID"
  desc "Electronic personal identification system"
  homepage "https://install.bankid.com/"

  livecheck do
    url "https://install.bankid.com/FileDownloader?fileId=Mac"
    strategy :header_match
  end

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"
end
