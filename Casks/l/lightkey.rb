cask "lightkey" do
  on_monterey :or_older do
    version "4.4.4"
    sha256 "d560c897b76f4b3aba1ec41fc3ccd21c3e4f9739fde7140f3fa01a6b621a1eff"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :big_sur"
  end
  on_ventura :or_newer do
    version "4.5.1"
    sha256 "40dd3cff27680c5f0202d81c0b61d49ef24c5033e96618c7f29008d6937bd365"

    livecheck do
      url "https://lightkeyapp.com/en/update"
      strategy :sparkle
    end

    depends_on macos: ">= :ventura"
  end

  url "https://lightkeyapp.com/download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
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
