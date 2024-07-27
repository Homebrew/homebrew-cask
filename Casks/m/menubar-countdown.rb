cask "menubar-countdown" do
  version "2.1"
  sha256 "9b72a2c3544c7e3e9c9cb60feb9be2ff7905184c9e988f921bea5269a60fb805"

  url "https://github.com/kristopherjohnson/MenubarCountdown/releases/download/#{version}/Menubar_Countdown_#{version}.zip"
  name "Menubar Countdown"
  desc "Countdown timer for the menu bar"
  homepage "https://github.com/kristopherjohnson/MenubarCountdown"

  deprecate! date: "2024-07-27", because: :unmaintained

  depends_on macos: ">= :mojave"

  app "Menubar Countdown.app"

  caveats do
    requires_rosetta
  end
end
