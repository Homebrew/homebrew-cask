cask "lightkey" do
  on_monterey :or_older do
    version "4.4.5"
    sha256 "457df4bb2d2f21a52eec9b9b05830eb082014ce66fd79f91544a0838d54a3241"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :big_sur"
  end
  on_ventura :or_newer do
    version "4.5.1"
    sha256 "40dd3cff27680c5f0202d81c0b61d49ef24c5033e96618c7f29008d6937bd365"

    # Updates for legacy versions are included so sorting by release date
    # return false positives, pass all version numbers to livecheck instead
    livecheck do
      url "https://lightkeyapp.com/en/update"
      strategy :sparkle do |items|
        items.map(&:version)
      end
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
