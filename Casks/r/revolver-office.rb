cask "revolver-office" do
  version "8.12.7"
  sha256 "5790d961c8442dd41e2f74e5ebc8572b90c77ae777e960b59abca96f9881bfb8"

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
