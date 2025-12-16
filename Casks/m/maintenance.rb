cask "maintenance" do
  sha256 :no_check

  # NOTE: We use separate `url` values in each of the macOS on_system blocks
  # so that the API data correctly includes URL variants for each.
  on_sonoma :or_older do
    on_catalina :or_older do
      version "2.7.1"

      url "https://www.titanium-software.fr/download/1015/Maintenance.dmg"
    end
    on_big_sur do
      version "2.8.2"

      url "https://www.titanium-software.fr/download/11/Maintenance.dmg"
    end
    on_monterey do
      version "2.9.2"

      url "https://www.titanium-software.fr/download/12/Maintenance.dmg"
    end
    on_ventura do
      version "3.0.2"

      url "https://www.titanium-software.fr/download/13/Maintenance.dmg"
    end
    on_sonoma do
      version "3.2.0"

      url "https://www.titanium-software.fr/download/14/Maintenance.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia do
    version "3.3.6"

    url "https://www.titanium-software.fr/download/15/Maintenance.dmg"
  end
  on_tahoe :or_newer do
    version "3.4.3"

    url "https://www.titanium-software.fr/download/26/Maintenance.dmg"

    # We check the version on the homepage, as the version in the related plist
    # file can be out of date.
    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s]*26\s*</i)
    end
  end

  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
    :sequoia,
    :tahoe,
  ]

  app "Maintenance.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.titanium.Maintenance.help*",
    "~/Library/Preferences/com.titanium.Maintenance.plist",
    "~/Library/Saved Application State/com.titanium.Maintenance.savedState",
  ]
end
