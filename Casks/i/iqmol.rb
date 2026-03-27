cask "iqmol" do
  version "3.2.1"
  sha256 "186656e2c61a4b2f8369741832e98827eadd565a922416f8cb62aecb836aea4a"

  url "https://downloads.q-chem.com/iqmol/IQmol-#{version}.dmg",
      verified: "downloads.q-chem.com/iqmol/"
  name "IQmol"
  desc "Free open-source molecular editor and visualization package"
  homepage "https://www.iqmol.org/"

  livecheck do
    url "https://www.iqmol.org/downloads.html"
    regex(/href=.*?IQmol[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "IQmol.app"

  zap trash: [
    "~/Library/Preferences/org.iqmol.IQmol.plist",
    "~/Library/Preferences/org.iqmol.plist",
    "~/Library/Saved Application State/org.iqmol.savedState",
  ]
end
