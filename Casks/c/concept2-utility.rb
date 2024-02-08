cask "concept2-utility" do
  on_sierra :or_older do
    version "7.09.02"
    sha256 "e4ebee8cde57c7ef63c3903285c3fc0ee8f87221e7c5529b9dcf97b3f9ebb57e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra :or_newer do
    version "7.14.00"
    sha256 "389c5f77f290e2d60bb5dc8ddeae108e14df8b444265865ffb8f9ee75985aecd"

    livecheck do
      url :homepage
      regex(/Concept2\s+Utility\s+(\d+(?:\.\d+)+)/i)
    end
  end

  url "https://software.concept2.com/utility/Concept2Utility0#{version.no_dots}.dmg"
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
