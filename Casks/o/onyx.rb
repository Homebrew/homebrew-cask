cask "onyx" do
  sha256 :no_check

  on_el_capitan do
    version "3.1.9"

    url "https://www.titanium-software.fr/download/1011/OnyX.dmg"
  end
  on_sierra do
    version "3.3.1"

    url "https://www.titanium-software.fr/download/1012/OnyX.dmg"
  end
  on_high_sierra do
    version "3.4.9"

    url "https://www.titanium-software.fr/download/1013/OnyX.dmg"
  end
  on_mojave do
    version "3.6.8"

    url "https://www.titanium-software.fr/download/1014/OnyX.dmg"
  end
  on_catalina do
    version "3.8.7"

    url "https://www.titanium-software.fr/download/1015/OnyX.dmg"
  end
  on_big_sur do
    version "4.0.2"

    url "https://www.titanium-software.fr/download/11/OnyX.dmg"
  end
  on_monterey do
    version "4.2.7"

    url "https://www.titanium-software.fr/download/12/OnyX.dmg"
  end
  on_ventura do
    version "4.4.7"

    url "https://www.titanium-software.fr/download/13/OnyX.dmg"
  end
  on_sonoma do
    version "4.6.2"

    url "https://www.titanium-software.fr/download/14/OnyX.dmg"
  end
  on_sequoia do
    version "4.7.2"

    url "https://www.titanium-software.fr/download/15/OnyX.dmg"
  end

  name "OnyX"
  desc "Verify system files structure, run miscellaneous maintenance and more"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  livecheck do
    url "https://www.titanium-software.fr/download/#{MacOS.version}/OnyX.plist"
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

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end
