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
    version "7.17.00"
    sha256 "2796b6275e9d1ab08051b94e5c33e89a5b14d31020132324f9948f8aa754cae3"

    url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.pkg"

    # We are using a regional URL as a workaround because checking the main
    # releases page (https://www.concept2.com/support/software/utility) is
    # failing in our CI environment.
    livecheck do
      url "https://www.concept2.de/service/software/concept2-utility"
      regex(/Concept2\s+Utility\s+v?(\d+(?:\.\d+)+)/i)
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
