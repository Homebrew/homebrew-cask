cask "concept2-utility" do
  on_high_sierra :or_older do
    version "7.09.02"
    sha256 "e4ebee8cde57c7ef63c3903285c3fc0ee8f87221e7c5529b9dcf97b3f9ebb57e"

    url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.dmg"

    livecheck do
      skip "Legacy version"
    end

    pkg "Concept2 Utility #{version}.pkg"
  end
  on_mojave :or_newer do
    version "7.15.00"
    sha256 "49970f8773ed253ce3db4cc922e05528bfc43ffd3c3bd67d3889a8710589b21f"

    url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.pkg"

    livecheck do
      url :homepage
      regex(/Concept2\s+Utility\s+(\d+(?:\.\d+)+)/i)
    end
  end

  name "Concept2 Utility"
  desc "Utilities for the Concept2 Performance Monitor"
  homepage "https://www.concept2.com/support/software/utility"

  uninstall pkgutil: "com.concept2.pkg.Concept2Utility"

  zap trash: [
    "~/Documents/Concept2",
    "~/Library/Application Support/Concept2",
    "~/Library/Preferences/com.concept2.Utility.plist",
    "~/Library/Saved Application State/com.concept2.lcu.savedState",
  ]
end
