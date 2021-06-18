cask "lightkey" do
  version "3.6.3"
  sha256 "8720ee089e3b93ec253adee2140c3ac2acfdb31bd7339e71b72bc14b18de8439"

  url "https://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  name "Lightkey"
  desc "DMX lighting control"
  homepage "https://lightkeyapp.com/"

  livecheck do
    url "https://lightkeyapp.com/en/download"
    strategy :header_match do |headers|
      headers["location"][%r{/Lightkey[._-]v?(\d+(?:-\d+)+)/LightkeyInstaller\.zip}i, 1].tr("-", ".")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "LightkeyInstaller.pkg"

  uninstall delete:  "/Applications/Lightkey.app",
            pkgutil: [
              "de.monospc.lightkey.pkg.App",
              "de.monospc.lightkey.pkg.documentation",
              "de.monospc.lightkey.pkg.OLA",
            ]

  zap trash: [
    "~/Library/Application Support/Lightkey",
    "~/Library/Caches/de.monospc.Lightkey",
    "~/Library/Logs/Lightkey OLA.log",
    "~/Library/Preferences/de.monospc.Lightkey.plist",
  ]
end
