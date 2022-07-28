cask "iqmol" do
  version "2.15.3"
  sha256 "e554f4effa035f70fde6fc3914ce2af89e84c88cb7308066c3d0869fb75b1011"

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
