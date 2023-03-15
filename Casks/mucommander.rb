cask "mucommander" do
  version "1.2.0-1"
  sha256 "c77c3d0105de57dcb2e2641a23266aef576b9874a61096935d961427eece636c"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"
end
