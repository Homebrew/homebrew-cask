cask "bankid" do
  version "7.12.0"
  sha256 "a53860dc1ea5b2879e908022ec4478423824a9a702b387dcfc838284a51645d8"

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
