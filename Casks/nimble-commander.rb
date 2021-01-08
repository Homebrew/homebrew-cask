cask "nimble-commander" do
  version "1.2.9,3524"
  sha256 "2ef0bd6c404deedd67ce4d5cb71e47e994f1b95731a59b9afe0a8be6d6b26149"

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
