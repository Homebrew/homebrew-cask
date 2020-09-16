cask "poedit" do
  version "2.4.1"
  sha256 "7686a43d66252b86f7bb96ae5f10926829fbb091b13045b94b7762d5a3d939ed"

  url "https://download.poedit.net/Poedit-#{version}.zip"
  appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  name "Poedit"
  homepage "https://poedit.net/"

  auto_updates true

  app "Poedit.app"
end
