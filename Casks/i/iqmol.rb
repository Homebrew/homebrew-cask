cask "iqmol" do
  version "3.2.2"
  sha256 "8f8dfebafe3ef0fc46ba7081bee8ba7c6f459c30a7106b475794ab1bdf6f1883"

  url "https://github.com/nutjunkie/IQmol#{version.major}/releases/download/v#{version}/IQmol-#{version}.dmg",
      verified: "github.com/nutjunkie/IQmol#{version.major}/"
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
