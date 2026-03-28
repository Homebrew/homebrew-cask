cask "revolver-office" do
  version "8.13.0"
  sha256 "507532311d2e0826ff1756a5b1cf64a52130dfc3d429d39ff0fb756e03666b41"

  url "https://download.revolver.info/r#{version.major}/#{version.minor}/#{version.patch}/mac/revolveroffice#{version.no_dots}.dmg"
  name "Revolver Office"
  desc "Project management tool"
  homepage "https://www.revolver.info/"

  livecheck do
    url "https://www.revolver.info/downloads/"
    regex(/>\s*Revolver\s+v?(\d+(?:\.\d+)+)\s*</i)
  end

  app "Revolver Office.app"

  zap trash: [
    "~/Library/Caches/info.revolver.office",
    "~/Library/Preferences/info.revolver.office.plist",
    "~/Library/Preferences/Revolver Logs",
    "~/Library/Preferences/Revolver Preferences",
    "~/Library/Saved Application State/info.revolver.office.savedState",
    "~/Library/WebKit/info.revolver.office",
  ]
end
