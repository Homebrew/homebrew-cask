cask "archipelago" do
  version "4.2.0"
  sha256 "8f40ddada4bb8846aa8a05642e5c7844d20fbf5ecd377cdc08ec0d662c2dfc63"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
