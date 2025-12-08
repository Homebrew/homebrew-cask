cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "6d013377de17eccfdff1990ce4f316048b529c047edb1136be6a9feaf88b6572",
         intel: "d9da80078075fc6c07528b999c771138698b2a6491106950c509b25712affe78"

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
