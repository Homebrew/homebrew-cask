cask "mx-power-gadget" do
  version "1.5.2"
  sha256 :no_check

  url "https://www.seense.com/menubarstats/mxpg/updateapp/mxpg.zip"
  name "Mx Power Gadget"
  desc "Power management and monitoring for Apple Mx processors"
  homepage "https://www.seense.com/menubarstats/mxpg/"

  livecheck do
    url "https://www.seense.com/menubarstats/mxpg/updateapp/appcast.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :ventura"

  app "Mx Power Gadget.app"

  zap trash: [
    "~/Library/Caches/com.fabriceleyne.MxPowerGadget",
    "~/Library/Preferences/com.fabriceleyne.MxPowerGadget.plist",
  ]
end
