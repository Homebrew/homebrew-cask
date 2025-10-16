cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "a4584666bfeeff29be613706156dba32b453d654362a82a8d2ca65cd1993edcb",
         intel: "7633bdac9d7df2f0e40589d8eca3bbee17fac61cb81b544ce3ebddfdd90850ca"

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
