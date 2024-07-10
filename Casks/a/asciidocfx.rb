cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.10"
  sha256 arm:   "eb4510935a93df580633a7508be2c719f827a889ea6ded72f2a5956ba3b1a9a8",
         intel: "2b50145239ee80c7adf053bbfc5df481580da14e5e5fb0703a4adc8c2fdb45ea"

  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac#{arch}.dmg",
      verified: "github.com/asciidocfx/AsciidocFX/"
  name "AsciidocFX"
  desc "Asciidoc editor and toolchain to build books, documents and slides"
  homepage "https://www.asciidocfx.com/"

  installer script: {
    executable: "AsciidocFX Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/AsciidocFX/AsciidocFX Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  zap delete: "/Library/Preferences/com.install4j.installations.plist",
      trash:  [
        "~/.AsciidocFX-#{version}",
        "~/Library/Preferences/com.install4j.7853-9376-5862-1224.24.plist",
        "~/Library/Preferences/com.install4j.installations.plist",
        "~/Library/Saved Application State/com.install4j.7853-9376-5862-1224.24.savedState",
      ]
end
