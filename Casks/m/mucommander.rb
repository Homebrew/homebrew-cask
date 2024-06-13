cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.4.1-1"
  sha256 arm:   "9bdc24f89c5b1a979298c3f7d5bed236e39d6e1596317637f54bb003db54a613",
         intel: "c803b68c8f07ab09a577438716f491c8a979773e2c5ab727ffd2f13285498572"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
