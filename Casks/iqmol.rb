cask "iqmol" do
  version "3.1.2"
  sha256 "cd7bfd76033c14ca00fdc413d1043bb09d932797175c079fdc2ad2413763542f"

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
