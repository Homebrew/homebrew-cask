cask "sanesidebuttons" do
  version "1.1.0"
  sha256 "1913091544dd0df51d48f2227c76cc0984400aaf5790c8689c458bd8355f877a"

  url "https://github.com/thealpa/SaneSideButtons/releases/download/#{version}/SaneSideButtons.dmg"
  name "sanesidebuttons"
  desc "Menu bar app that enables system-wide navigation using side mouse buttons"
  homepage "https://github.com/thealpa/SaneSideButtons"

  depends_on macos: ">= :big_sur"

  app "SaneSideButtons.app"

  zap trash: "~/Library/Preferences/com.janhuelsmann.sanesidebuttons.plist"
end
