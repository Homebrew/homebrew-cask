cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "33c291cf1c28d89828fb61b62db87a0a2e0d8acfb90c80bb063ff940acb65fff",
         intel: "905711fe1d0103ca274c5d45cc6298897b40076bc403125ecef7ee290ff82b72"

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
