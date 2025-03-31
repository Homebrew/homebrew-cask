cask "deeper" do
  sha256 :no_check

  on_el_capitan :or_older do
    version "2.1.4"
  end
  on_sierra do
    version "2.2.3"
  end
  on_high_sierra do
    version "2.3.3"
  end
  on_mojave do
    version "2.4.8"
  end
  on_catalina do
    version "2.6.0"
  end
  on_big_sur do
    version "2.7.1"
  end
  on_monterey do
    version "2.8.0"
  end
  on_ventura do
    version "2.9.2"
  end
  on_sonoma do
    version "3.0.9"
  end
  on_sequoia :or_newer do
    version "3.1.3"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Deeper.dmg"
  name "Deeper"
  desc "Tool to enable and disable hidden functions of Finder and other apps"
  homepage "https://www.titanium-software.fr/en/deeper.html"

  livecheck do
    url "https://www.titanium-software.fr/download/#{MacOS.version}/Deeper.plist"
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

  app "Deeper.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Deeper Help*",
    "~/Library/Logs/Deeper.log",
    "~/Library/Preferences/com.titanium.Deeper.plist",
    "~/Library/Saved Application State/com.titanium.Deeper.savedState",
  ]
end
