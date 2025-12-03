cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "98d0732a26e5b9694b060a0fd3e3f246bfbe568b6c3002d54d58872baec59c2f",
         intel: "ba82819e094b1ef737dcd5f87723dfea4fce1fc7285f2195eeed6581cfbce52a"

  url "https://github.com/atuinsh/desktop/releases/download/v#{version}/Atuin_#{version}_#{arch}.dmg",
      verified: "github.com/atuinsh/desktop/"
  name "Atuin Desktop"
  desc "Runbook editor for terminal workflows"
  homepage "https://atuin.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Atuin.app"

  uninstall quit: "sh.atuin.app"

  zap trash: [
    "~/Library/Application Support/sh.atuin.app",
    "~/Library/Caches/sh.atuin.app",
    "~/Library/Preferences/sh.atuin.app.plist",
    "~/Library/WebKit/sh.atuin.app",
  ]
end
