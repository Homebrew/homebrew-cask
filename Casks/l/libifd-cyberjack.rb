cask "libifd-cyberjack" do
  arch arm: "arm64", intel: "x86_64"

  version "3.99.5final.SP16"
  sha256 arm:   "ce347734f78bbcc66fa8da24828a191f5f585adceb14cf5423aac7e12d9638fb",
         intel: "2aa15c5e647fa8841ffd9c7fff950dc642ce23656a498a2e83412cd9c1551a0a"

  url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_#{version}-#{arch}-signed.pkg",
      verified: "support.reiner-sct.de/downloads/MAC/"
  name "Reiner SCT cyberJack driver"
  desc "Driver for REINER SCT cyberJack smart card readers"
  homepage "https://www.reiner-sct.com/"

  livecheck do
    url "https://help.reiner-sct.com/de/support/solutions/articles/101000480002"
    regex(/href=.*?pcsc[._-]cyberjack[._-]v?(\d+(?:\.\d+)+[^"' >]*)[._-]#{arch}(?:[._-]signed)?\.pkg/i)
  end

  depends_on macos: :ventura

  pkg "pcsc-cyberjack_#{version}-#{arch}-signed.pkg"

  uninstall pkgutil: [
              "com.reiner-sct.mac.cyberjack",
              "com.reiner-sct.pcsc-cyberjack_#{version}",
            ],
            delete:  "/usr/local/libexec/SmartCardServices/drivers/libifd-cyberjack.bundle"

  # No zap stanza required

  caveats do
    files_in_usr_local
    reboot
  end
end
