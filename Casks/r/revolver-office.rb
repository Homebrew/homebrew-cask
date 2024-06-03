cask "revolver-office" do
  version "8.13.0"
  sha256 "f93b788e3ed092d51045586b3d566de284706a7c225de177031626d21850331c"

  url "https://download.revolver.info/r#{version.major}/#{version.minor}/#{version.patch}/mac/revolveroffice#{version.no_dots}.dmg"
  name "Revolver Office"
  desc "Project management tool"
  homepage "https://www.revolver.info/"

  livecheck do
    url "https://www.revolver.info/downloads/"
    regex(/Revolver\s*(\d+(?:\.\d+)+)/i)
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
