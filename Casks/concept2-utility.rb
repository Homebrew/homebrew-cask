cask "concept2-utility" do
  on_sierra :or_older do
    version "7.09.02"
    sha256 "e4ebee8cde57c7ef63c3903285c3fc0ee8f87221e7c5529b9dcf97b3f9ebb57e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra :or_newer do
    version "7.10.15"
    sha256 "e92bc06fc75fd08291ed08e8ae726fc7461d4b64c42887641977b5be2817af93"

    livecheck do
      url :homepage
      regex(/Concept2\s+Utility\s+(\d+(?:\.\d+)+)/i)
    end
  end

  url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.dmg"
  name "Concept2 Utility"
  desc "Utilities for the Concept2 Performance Monitor"
  homepage "https://www.concept2.com/service/software/concept2-utility"

  pkg "Concept2 Utility #{version}.pkg"

  uninstall pkgutil: "com.concept2.pkg.Concept2Utility"

  zap trash: [
    "~/Documents/Concept2",
    "~/Library/Application Support/Concept2",
    "~/Library/Preferences/com.concept2.Utility.plist",
    "~/Library/Saved Application State/com.concept2.lcu.savedState",
  ]
end
