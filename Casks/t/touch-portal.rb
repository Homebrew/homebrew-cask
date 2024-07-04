cask "touch-portal" do
  arch arm: "M1"

  version "4.2.0"
  sha256 :no_check

  url "https://www.touch-portal.com/downloads/releases/mac/TouchPortalMacRelease#{arch}.dmg"
  name "Touch Portal"
  desc "Macro remote control"
  homepage "https://www.touch-portal.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "TouchPortal.app"

  uninstall pkgutil: "org.eclipse.jdt.internal.jarinjarloader"

  zap trash: "~/Documents/TouchPortal"
end
