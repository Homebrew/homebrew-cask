cask "doxygen" do
  version "1.13.1"
  sha256 "93468594ea8a4ee682838253f58953e328ea632304d5408e4cc94c082c621932"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    regex(%r{href=.*?/Doxygen-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Doxygen.app"

  zap trash: [
    "~/Library/Preferences/org.doxygen.Doxywizard.plist",
    "~/Library/Preferences/org.doxygen.plist",
    "~/Library/Saved Application State/org.doxygen.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
