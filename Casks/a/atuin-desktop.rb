cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.2.19"
    sha256 "6c8bd7398fb812183f959cc9c0cf496eab1f4106bf52b4bd47f41fa5148d4daa"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_intel do
    version "0.2.17"
    sha256 "af263d709c5e0db897ee25947ae2a13247d5dfe0f622309bf07a71db838a809d"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://github.com/atuinsh/desktop/releases/download/v#{version}/Atuin_#{version}_#{arch}.dmg",
      verified: "github.com/atuinsh/desktop/"
  name "Atuin Desktop"
  desc "Runbook editor for terminal workflows"
  homepage "https://atuin.sh/"

  app "Atuin.app"

  uninstall quit: "sh.atuin.app"

  zap trash: [
    "~/Library/Application Support/sh.atuin.app",
    "~/Library/Caches/sh.atuin.app",
    "~/Library/Preferences/sh.atuin.app.plist",
    "~/Library/WebKit/sh.atuin.app",
  ]
end
