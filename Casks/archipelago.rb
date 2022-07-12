cask "archipelago" do
  version "4.2.2"
  sha256 "0e5009ad2d4114e282a97909c4ada4d19f51f4f8e57f6b109b2fcf77b66afe54"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
