cask "doxygen" do
  version "1.13.0"
  sha256 "45a6595c7995cd1ba3e0c2eeb85e153834e3f899e2a24f42b65e52741c7a50bf"

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
