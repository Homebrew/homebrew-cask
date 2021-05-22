cask "archipelago" do
  version "3.16.0"
  sha256 "d06a98597a980642b084a9d299cdd0040480967e08b885a4d4aad5af9814aa21"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
