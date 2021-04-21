cask "qview" do
  version "4.0"
  sha256 "bc8385149973c0564602d39bb5163de5b26bbc52f2c523a884f3310855a37c8d"

  url "https://github.com/jurplel/qView/releases/download/#{version}/qView-#{version}.dmg"
  name "qView"
  homepage "https://github.com/jurplel/qView"

  app "qView.app"
end
