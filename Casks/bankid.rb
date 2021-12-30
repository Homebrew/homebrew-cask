cask "bankid" do
  version "7.11.0"
  sha256 "7bf72dd1258e390abbb89febc048c70f660b42f47723e9e7f59eb60d2de1ae41"

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
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
