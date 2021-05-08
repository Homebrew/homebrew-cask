cask "lightkey" do
  version "3.6"
  sha256 "6d4548f42171a2643d5d252e6f20400062c390c2271143ddc278fe2dccc2a430"

  url "https://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  name "Lightkey"
  desc "DMX lighting control"
  homepage "https://lightkeyapp.com/"

  livecheck do
    url "https://lightkeyapp.com/en/download"
    strategy :header_match do |headers|
      headers["location"][%r{-(\d+(?:-\d+)*)/LightkeyInstaller\.zip}i, 1].tr("-", ".")
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
