cask "intellidock" do
  version "1.0"
  sha256 "592ce456ddf29f3464c3dcdc530d86be92cadc72afd471d968f0f6fd07125e94"

  url "https://mightymac.app/intellidock/download/IntelliDock-#{version}.dmg"
  name "IntelliDock"
  desc "Hides the Dock when it is overlapped by a window"
  homepage "https://mightymac.app/intellidock/"

  livecheck do
    url "https://mightymac.app/intellidock/download/appcast.xml"
    strategy :sparkle
  end

  app "IntelliDock.app"

  zap trash: "~/Library/Preferences/app.mightymac.IntelliDock.plist"
end
