cask "iqmol" do
  version "3.1.5"
  sha256 "0747e25fc21b2134eb63e744be58c2f2faeac3650edf5ff9760b79dfe1318350"

  url "http://iqmol.org/downloads/IQmol-#{version}.dmg"
  name "IQmol"
  desc "Free open-source molecular editor and visualization package"
  homepage "http://iqmol.org/"

  livecheck do
    url "https://iqmol.org/downloads.html"
    regex(/href=.*?IQmol[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "IQmol.app"

  zap trash: [
    "~/Library/Preferences/org.iqmol.IQmol.plist",
    "~/Library/Preferences/org.iqmol.plist",
    "~/Library/Saved Application State/org.iqmol.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
