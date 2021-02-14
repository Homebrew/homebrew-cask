cask "lightkey" do
  version "3.5"
  sha256 "facae29028ce10b30eeae084d9e5cd7f63088c5615861d233507f280591ff29b"

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
