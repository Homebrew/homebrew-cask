cask "concept2-utility" do
  version "7.18.00"
  sha256 "7cddf14474f156a925026999b28657c0299b58c58221d798d53b266336cd08be"

  url "https://software.concept2.com/utility/Concept2Utility#{version.no_dots}.pkg"
  name "Concept2 Utility"
  desc "Utilities for the Concept2 Performance Monitor"
  homepage "https://www.concept2.com/support/software/utility"

  # We are using a regional URL as a workaround because checking the main
  # releases page (https://www.concept2.com/support/software/utility) is
  # failing in our CI environment.
  livecheck do
    url "https://www.concept2.de/support/software/utility"
    regex(/Concept2\s+Utility\s+v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        (match[0].count(".") >= 2) ? match[0] : "#{match[0]}.00"
      end
    end
  end

  uninstall pkgutil: "com.concept2.pkg.Concept2Utility"

  zap trash: [
    "~/Documents/Concept2",
    "~/Library/Application Support/Concept2",
    "~/Library/Preferences/com.concept2.Utility.plist",
    "~/Library/Saved Application State/com.concept2.lcu.savedState",
  ]
end
