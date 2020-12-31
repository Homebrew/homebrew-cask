cask "nimble-commander" do
  version "1.2.7,3120"
  sha256 "f4975decc6251a5310d05b9e906a9bbcde9828f44b75b1f9666d9afd5d4c95bd"

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
