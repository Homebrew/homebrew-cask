cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "aa9886d77cae3ba05021e5cd44019f96a67c9494c51554be18180b42468dc5f0",
         intel: "0884bd06143403e0f372fd2487d7a3a71dad2678d4926ab5e11e4656b24cabdb"

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
