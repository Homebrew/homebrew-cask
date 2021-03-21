cask "archipelago" do
  version "3.14.0"
  sha256 "8732617eb50ad782088f9a2a6e48b29035a5dd3ba92e75081888e670bb16a2f1"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Open-source terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
