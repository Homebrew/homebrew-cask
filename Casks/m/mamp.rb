cask "mamp" do
  arch arm: "Apple-chip", intel: "Intel-x86"

  version "7.3"
  sha256 arm:   "d9077a492c92c941d762977fadd9467ee4388b3a81fb9b8af1980425b9a14d99",
         intel: "eac902dade24641a43990ae612ce4dcbdd0f4f8c608d2675bdd16d8551827ab1"

  url "https://downloads.mamp.info/MAMP-PRO/macOS/MAMP-PRO/MAMP-MAMP-PRO-#{version}-#{arch}.pkg"
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  livecheck do
    url "https://www.mamp.info/en/downloads/"
    regex(%r{href=.*?/MAMP[._-]MAMP[._-]PRO[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg}i)
  end

  auto_updates true

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
