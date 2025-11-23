cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "06b6b1ca87b9ec354d7b1d7ec074a7ab573a93d37a7db84cddc076e8750f25cd",
         intel: "e6285c8d9f9d60ce9948d76e494877e0c5e3f0e3defb7e6894034a96518c8c52"

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
