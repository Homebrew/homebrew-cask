cask "lightkey" do
  version "3.7.1"
  sha256 "de5a20af40985b88d2992c24a236d2b7062142099d9cf734b1e786c0bb0246e8"

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
