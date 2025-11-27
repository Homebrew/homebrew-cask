cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "61ac728c893ecd877d6e32031b72cce073f56c2cd4f7f9c61d30d23f5c7326a6",
         intel: "4727eed7505554e29f0efdf5710c5978d86f4ccaa478ce5d7dd9e52b63ded5e6"

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
