cask "apparency" do
  on_big_sur :or_older do
    on_mojave do
      version "1.3"
      sha256 "31704bc2d9594bf185bd6dfa6541c986749d524ecdab11cff18c5a5c095e0157"

      url "https://www.mothersruin.com/software/downloads/Apparency-#{version}.dmg"
    end
    on_catalina do
      version "1.4.1"
      sha256 "850d19c6d6a86380211d9acdb3d8b0ee3b2a4c8af833126c28141f105823c59a"

      url "https://www.mothersruin.com/software/downloads/Apparency-#{version}.dmg"
    end
    on_big_sur do
      version "1.6.1"
      sha256 "cadd8894ec15b664fd60a141f82136cbe139af0b13000851497d880235abe8b2"

      url "https://www.mothersruin.com/software/downloads/Apparency-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "2.2,483"
    sha256 :no_check

    url "https://mothersruin.com/software/downloads/Apparency.dmg"

    livecheck do
      url "https://www.mothersruin.com/software/Apparency/data/ApparencyVersionInfo.plist"
      strategy :xml do |xml|
        short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
        version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text
        next if short_version.blank? || version.blank?

        "#{short_version.strip},#{version.strip}"
      end
    end
  end

  name "Apparency"
  desc "Inspect application bundles"
  homepage "https://www.mothersruin.com/software/Apparency/"

  depends_on macos: ">= :mojave"

  app "Apparency.app"
  binary "#{appdir}/Apparency.app/Contents/MacOS/appy"

  zap trash: [
    "~/Library/Application Scripts/*.com.mothersruin.Apparency.SharedPrefs",
    "~/Library/Application Scripts/com.mothersruin.Apparency",
    "~/Library/Application Scripts/com.mothersruin.Apparency.QLPreviewExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.apparency.sfl*",
    "~/Library/Containers/com.mothersruin.Apparency",
    "~/Library/Containers/com.mothersruin.Apparency.QLPreviewExtension",
    "~/Library/Group Containers/*.com.mothersruin.Apparency.SharedPrefs",
  ]
end
