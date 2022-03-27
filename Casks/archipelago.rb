cask "archipelago" do
  version "4.0.0"
  sha256 "b0e72e180663d913de71a4c24f795ddf632f0f084405bd2195c25b84f5dac3dd"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
