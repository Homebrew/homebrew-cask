cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "ed162b1c29f0740ada262b52c91e8a14515fb5a349ff3f5c78d4157aec7e7a75",
         intel: "fda21eca189456c6f45e9220fbc0d176af1352104f6383e21e7b5a721d522355"

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
