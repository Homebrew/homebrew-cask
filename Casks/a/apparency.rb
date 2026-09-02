cask "apparency" do
  on_ventura :or_older do
    on_big_sur :or_older do
      version "1.6.1"
      sha256 "cadd8894ec15b664fd60a141f82136cbe139af0b13000851497d880235abe8b2"
    end
    on_monterey do
      version "2.3"
      sha256 "41a3fb2e5e592b44151cf1730cf995f2b7745e663721ed153c10d72440cc1025"
    end
    on_ventura do
      version "3.2"
      sha256 "0a2639fac59f2a88510193bc6aa79a6e1af7a7f2c6cb6bc468fb7a30c8a68cc3"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "3.3"
    sha256 "9f0622d654603556861baf41e4959134e3321169a90c012909dc44057f7a3dc3"

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

  depends_on :macos

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
