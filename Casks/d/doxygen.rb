cask "doxygen" do
  version "1.14.0"
  sha256 "ad2c71cb286100d4eaccd0b9d92751c88c4bd0501990f7eccc50aa946f827dc7"

  url "https://www.doxygen.nl/files/Doxygen-#{version}.dmg"
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
