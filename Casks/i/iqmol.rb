cask "iqmol" do
  version "3.2.0"
  sha256 "adcbc79415d8d46a3a769144e95dcb2264780182d22038367f5a4633982be700"

  url "https://downloads.q-chem.com/iqmol/IQmol-#{version}.dmg",
      verified: "downloads.q-chem.com/iqmol/"
  name "IQmol"
  desc "Free open-source molecular editor and visualization package"
  homepage "https://www.iqmol.org/"

  livecheck do
    url "https://www.iqmol.org/downloads.html"
    regex(/href=.*?IQmol[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :ventura"

  app "IQmol.app"

  zap trash: [
    "~/Library/Preferences/org.iqmol.IQmol.plist",
    "~/Library/Preferences/org.iqmol.plist",
    "~/Library/Saved Application State/org.iqmol.savedState",
  ]
end
