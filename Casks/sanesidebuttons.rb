cask "sanesidebuttons" do
  version "1.2.0"
  sha256 "c9bdf7cf464a7c68614c189a014fcb3bb2c92edcdc2826e33b983046e69ab742"

  url "https://github.com/thealpa/SaneSideButtons/releases/download/#{version}/SaneSideButtons.dmg"
  name "SaneSideButtons"
  desc "Menu bar app that enables system-wide navigation using side mouse buttons"
  homepage "https://github.com/thealpa/SaneSideButtons"

  depends_on macos: ">= :ventura"

  app "SaneSideButtons.app"

  zap trash: "~/Library/Preferences/com.janhuelsmann.sanesidebuttons.plist"
end
