cask "iqmol" do
  version "3.1.3"
  sha256 "d44e1e60e9d31d48839fc1dbb56b2eab9fd6e632404dd8ac770876ca633077f3"

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
