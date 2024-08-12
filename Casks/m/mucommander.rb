cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.0-1"
  sha256 arm:   "0edde5e934816fd1577a52c522679ca7c9509486ec0983528cbe7b7bcae8305a",
         intel: "16e104f26908e8059dda2e027915e1412ae9de5bb1cdf355e2c671212b123ba5"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
