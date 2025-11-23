cask "selfcontrol" do
  version "4.0.2"
  sha256 "15d8fd17839746c608d0c4e929b650d741e691ebee6f893320c783e86ac75926"

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  name "SelfControl"
  desc "Block your own access to distracting websites"
  homepage "https://selfcontrolapp.com/"

  livecheck do
    url "https://update.selfcontrolapp.com/feeds/selfcontrol"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true

  app "SelfControl.app"

  zap trash: "~/Library/Preferences/org.eyebeam.SelfControl.plist"
end
