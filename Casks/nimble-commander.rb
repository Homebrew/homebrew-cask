cask "nimble-commander" do
  version "1.2.9,3532"
  sha256 "33812c90cd9cf69a6c7d639fcf63442fed7e982bda1d91895827f0a9f369511d"

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.before_comma}(#{version.after_comma}).dmg"
  name "Nimble Commander"
  desc "Dual-pane file manager"
  homepage "https://magnumbytes.com/"

  livecheck do
    url "https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml"
    strategy :sparkle
  end

  app "Nimble Commander.app"
end
