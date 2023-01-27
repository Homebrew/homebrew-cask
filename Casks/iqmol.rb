cask "iqmol" do
  version "3.1.0"
  sha256 "30201a2c8e7f97ca9e753617e044d2907e1dd44b71892f5d7a7b210330d624fb"

  url "http://iqmol.org/downloads/IQmol-#{version}.dmg"
  name "IQmol"
  desc "Free open-source molecular editor and visualization package"
  homepage "http://iqmol.org/"

  livecheck do
    url "http://iqmol.org/downloads.html"
    regex(/href=.*?=IQmol[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "IQmol.app"

  zap trash: [
    "~/Library/Preferences/org.iqmol.IQmol.plist",
    "~/Library/Preferences/org.iqmol.plist",
    "~/Library/Saved Application State/org.iqmol.savedState",
  ]
end
