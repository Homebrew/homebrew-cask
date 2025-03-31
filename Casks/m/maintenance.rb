cask "maintenance" do
  sha256 :no_check

  on_el_capitan :or_older do
    version "2.1.8"
  end
  on_sierra do
    version "2.3.0"
  end
  on_high_sierra do
    version "2.4.2"
  end
  on_mojave do
    version "2.5.6"
  end
  on_catalina do
    version "2.7.1"
  end
  on_big_sur do
    version "2.8.2"
  end
  on_monterey do
    version "2.9.2"
  end
  on_ventura do
    version "3.0.2"
  end
  on_sonoma do
    version "3.2.0"
  end
  on_sequoia :or_newer do
    version "3.2.9"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Maintenance.dmg"
  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  livecheck do
    url "https://www.titanium-software.fr/download/#{MacOS.version}/Maintenance.plist"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='Version']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  depends_on macos: [
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
    :sequoia,
  ]

  app "Maintenance.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.titanium.Maintenance.help*",
    "~/Library/Preferences/com.titanium.Maintenance.plist",
    "~/Library/Saved Application State/com.titanium.Maintenance.savedState",
  ]
end
