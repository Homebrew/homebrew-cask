cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "f0af64dfc2a02f3f04956d1325101edc63595943607d3d3011cac68f56d58e32",
         intel: "c175d57ce5b819f6039ed375b7445d69a95813ab0d08034f64f7cc6b3ad832d6"

  url "https://github.com/atuinsh/desktop/releases/download/v#{version}/Atuin_#{version}_#{arch}.dmg",
      verified: "github.com/atuinsh/desktop/"
  name "Atuin Desktop"
  desc "Runbook editor for terminal workflows"
  homepage "https://atuin.sh/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
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
