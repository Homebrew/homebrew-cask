cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.2-1"
  sha256 arm:   "43f9206c7f886071cb3e2b15d7604acabd9d8b9940be0d284b88661da90037f7",
         intel: "7acc221cb91511687937d3c5653bbc498906ae1a95594c7f1bac2ddc6d4cd1c4"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
