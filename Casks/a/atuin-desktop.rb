cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "fb84d919dcb3d5610becc47dbc6d48fe139075e41fdbb1cdd8c0caa1f1d36ad4",
         intel: "a57a71de99cf350461170ba9265bb27af7e72144a6d554baa13db396ed28e352"

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
