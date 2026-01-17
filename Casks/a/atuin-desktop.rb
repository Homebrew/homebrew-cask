cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.15"
  sha256 arm:   "a41b018fe752fcaf73a6ce3e3eebd8c5707e19b71324b9fa8845c63136d0dd86",
         intel: "648bbfb8948fbb6d7cf1575b6acd3d30b6afcd141946dfdc5f15e34a70805f6f"

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
