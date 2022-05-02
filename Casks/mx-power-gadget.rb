cask "mx-power-gadget" do
    version "1.2,20220322"
    sha256 "702f6ee1e533334bd6ffa42c168b20ad4d39a4c9a197fd0ece7e4b196bfdb929"
    
    url "https://www.seense.com/menubarstats/mxpg/updateapp/mxpg.zip"
    name "Mx Power Gadget"
    desc "Power management and monitoring for Apple Mx processors"
    homepage "https://www.seense.com/menubarstats/mxpg/"

    livecheck do
        url "https://www.seense.com/menubarstats/mxpg/updateapp/appcast.xml"
        strategy :sparkle
    end
  
    app "Mx Power Gadget.app"

    zap trash: [
        "~/Library/Caches/com.fabriceleyne.MxPowerGadget",
        "~/Library/Preferences/com.fabriceleyne.MxPowerGadget.plist",
      ]
end