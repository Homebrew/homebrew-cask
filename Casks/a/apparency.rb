cask "apparency" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "1.4.1"
      sha256 "850d19c6d6a86380211d9acdb3d8b0ee3b2a4c8af833126c28141f105823c59a"
    end
    on_big_sur do
      version "1.6.1"
      sha256 "cadd8894ec15b664fd60a141f82136cbe139af0b13000851497d880235abe8b2"
    end
    on_monterey do
      version "2.3"
      sha256 "41a3fb2e5e592b44151cf1730cf995f2b7745e663721ed153c10d72440cc1025"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.1"
    sha256 "41d64d14a07bf7533da6f77e082b7b046e006659cf6c1b05db60f85de08747ea"

    livecheck do
      url "https://www.mothersruin.com/software/Apparency/data/ApparencyVersionInfo.plist"
      strategy :xml do |xml|
        short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
        next if short_version.blank?

        short_version.strip
      end
    end
  end

  url "https://www.mothersruin.com/software/archives/Apparency-#{version}.dmg"
  name "Apparency"
  desc "Inspect application bundles"
  homepage "https://www.mothersruin.com/software/Apparency/"

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
