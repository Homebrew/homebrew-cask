cask "bankid" do
  version "7.18.0"
  sha256 "40c59e4eeb49021bd09ecc63441a4719d6454497d091609954f8eb827cb9475c"

  url "https://cdn.bankid.com/bisp/mac/BankID_installation_#{version.dots_to_underscores}.pkg"
  name "BankID Security Application (Sweden)"
  desc "Swedish personal electronic identification (eID) system"
  homepage "https://install.bankid.com/"

  livecheck do
    skip "Cannot be fetched due to Microsoft validate perfdrive protections"
  end

  depends_on macos: :monterey

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"

  zap trash: "~/Library/Application Support/BankID"
end
