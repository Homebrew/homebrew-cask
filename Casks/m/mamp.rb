cask "mamp" do
  arch arm: "Apple-chip", intel: "Intel-x86"

  version "7.1"
  sha256 arm:   "1aa06ef7ab5faca40719ca9b2b434859c499d13b8a8551c7fd771aaf2c53f643",
         intel: "5335e9733bd47f030ca61321ed275388568bf237e27be48c1033eb53833cb2cd"

  url "https://downloads.mamp.info/MAMP-PRO/macOS/MAMP-PRO/MAMP-MAMP-PRO-#{version}-#{arch}.pkg"
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  livecheck do
    url "https://www.mamp.info/en/downloads/"
    regex(%r{href=.*?/MAMP[._-]MAMP[._-]PRO[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP-MAMP-PRO-#{version}-#{arch}.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg",
            delete:  "/Applications/MAMP"

  zap delete: [
        "/Library/Application Support/appsolute",
        "/Library/LaunchDaemons/de.appsolute.mampprohelper.plist",
        "/Library/PrivilegedHelperTools/de.appsolute.mampprohelper",
      ],
      trash:  [
        "~/Library/Application Support/appsolute",
        "~/Library/Application Support/de.appsolute.MAMP",
        "~/Library/Application Support/de.appsolute.mamppro",
        "~/Library/Caches/de.appsolute.MAMP",
        "~/Library/Caches/de.appsolute.mamppro",
        "~/Library/HTTPStorages/de.appsolute.MAMP",
        "~/Library/HTTPStorages/de.appsolute.mamppro",
        "~/Library/Preferences/de.appsolute.MAMP.plist",
        "~/Library/Preferences/de.appsolute.mamppro.plist",
        "~/Library/Saved Application State/de.appsolute.MAMP.savedState",
        "~/Library/Saved Application State/de.appsolute.mamppro.savedState",
      ]
end
