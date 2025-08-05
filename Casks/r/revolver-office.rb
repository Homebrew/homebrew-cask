cask "revolver-office" do
  version "8.13.0"
  sha256 "44527cc988ff4fee67cbe8c59934ce901ef233808b1ee70d4f57be92a81b7433"

  url "https://download.revolver.info/r#{version.major}/#{version.minor}/#{version.patch}/mac/revolveroffice#{version.no_dots}.dmg"
  name "Revolver Office"
  desc "Project management tool"
  homepage "https://www.revolver.info/"

  livecheck do
    url "https://www.revolver.info/downloads/"
    regex(/>\s*Revolver\s+v?(\d+(?:\.\d+)+)\s*</i)
  end



  depends_on macos: ">= :high_sierra"

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
