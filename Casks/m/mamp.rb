cask "mamp" do
  arch arm: "Apple-chip", intel: "Intel-x86"

  version "7.6"
  sha256 arm:   "b48ba5b42ad72e3167efa71e26306014996d6c948685ce9b840353e8132a452c",
         intel: "fc0b22e4409141199d84b71652b840f83101304bbd4210b0f0b3e6a2a6be0138"

  url "https://downloads.mamp.info/MAMP-PRO/macOS/MAMP-PRO/MAMP-MAMP-PRO-#{version}-#{arch}.pkg"
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  livecheck do
    url "https://www.mamp.info/en/downloads/"
    regex(%r{href=.*?/MAMP[._-]MAMP[._-]PRO[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg}i)
  end

  auto_updates true
  depends_on :macos

  pkg "MAMP-MAMP-PRO-#{version}-#{arch}.pkg"

  postflight_steps do
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
