cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.4.0-1"
  sha256 arm:   "4f42c228b3d7e81857a2ad401474370bef3e0dd8d2dba88df21bd681457988f4",
         intel: "ef56bf88e0aef6743c3d145750a2d808ebbe4fb818242c4e2f57783f9414b36e"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
