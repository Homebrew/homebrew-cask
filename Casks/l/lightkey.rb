cask "lightkey" do
  on_monterey :or_older do
    version "4.4.5"
    sha256 "457df4bb2d2f21a52eec9b9b05830eb082014ce66fd79f91544a0838d54a3241"

    # This check should only return legacy versions and the conditions may need
    # to be updated as the minimum system version of releases changes. If/when
    # upstream stops publishing new legacy versions, this should be updated to
    # use `skip` instead.
    livecheck do
      url "https://lightkeyapp.com/en/update"
      strategy :sparkle do |items|
        items.map do |item|
          next unless item.minimum_system_version
          next if item.minimum_system_version < :big_sur ||
                  item.minimum_system_version >= :ventura

          item.version
        end
      end
    end

    depends_on macos: ">= :big_sur"
  end
  on_ventura :or_newer do
    version "4.6.1"
    sha256 "a6bec5984497df9d2f3a67447c9b2cd7e78f8d2a814cc90c66aaa0430175ced9"

    # Upstream also publishes legacy versions (with a lower minor version) in
    # the appcast, so the first `item` after sorting by `pubDate`/`version` may
    # not be the highest version. This `strategy` block collects the `version`
    # from all `items`, ignoring the `Sparkle` strategy's `pubDate` sorting.
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
