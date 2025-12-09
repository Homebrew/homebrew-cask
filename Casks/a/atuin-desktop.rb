cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "75c687884b1e61fc4494d167348bf83efc072efd886d9548e45370786a511921",
         intel: "f985999c2febe633f8bc31b69b258bd5e88c8d860d64b6f6f7c0d620973341de"

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
