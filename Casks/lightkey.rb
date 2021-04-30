cask "lightkey" do
  version "3.5.1"
  sha256 "1a705b790b8b202e7889667bcbee8a9c078b4ee39976a0ac70010e5d1da927df"

  url "https://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  appcast "https://lightkeyapp.com/en/downloads"
  name "Lightkey"
  desc "DMX lighting control"
  homepage "https://lightkeyapp.com/"

  auto_updates true

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
