cask "mucommander" do
  version "0.9.6-1"
  sha256 "fe0cf62f5b3d1f729936d0887b82e248e89c407d48d8b4fb1089a44570ae2040"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  appcast "https://github.com/mucommander/mucommander/releases.atom"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"
end
