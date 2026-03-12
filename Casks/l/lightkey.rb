cask "lightkey" do
  on_sonoma :or_older do
    version "5.3.3"
    sha256 "656cd6fdbd9ec27c46f6862d483265b5240f5ce107bb6a660b23b6a7c8473d8b"

    # This check should only return legacy versions and the conditions may need
    # to be updated as the minimum system version of releases changes. If/when
    # upstream stops publishing new legacy versions, this should be updated to
    # use `skip` instead.
    livecheck do
      url "https://lightkeyapp.com/en/update"
      strategy :sparkle do |items|
        items.map do |item|
          next unless item.minimum_system_version
          next if item.minimum_system_version > :sonoma

          item.version
        end
      end
    end
  end
  on_sequoia :or_newer do
    version "5.9.1"
    sha256 "22a39dfc6c16cd74b55bf21826c3bb7da5b6b7950cce9b0ef9f2e0439662b82d"

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
  end

  url "https://lightkeyapp.com/download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  name "Lightkey"
  desc "DMX lighting control"
  homepage "https://lightkeyapp.com/"

  auto_updates true
  depends_on macos: ">= :ventura"

  pkg "LightkeyInstaller.pkg"

  uninstall pkgutil: [
              "de.monospc.lightkey.pkg.App",
              "de.monospc.lightkey.pkg.documentation",
              "de.monospc.lightkey.pkg.OLA",
            ],
            delete:  "/Applications/Lightkey.app"

  zap trash: [
    "~/Library/Application Support/Lightkey",
    "~/Library/Caches/de.monospc.Lightkey",
    "~/Library/Logs/Lightkey OLA.log",
    "~/Library/Preferences/de.monospc.Lightkey.plist",
  ]
end
