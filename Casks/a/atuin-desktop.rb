cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "1a4e6faf4bca1da1a51f2aedd4f811dc51ea72517c9a5b5ddd86571877f6c034",
         intel: "285fa8f79a64fd3d3b06a22f38b28c81bafe56696e6cf48c1f19211adc21842b"

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
