cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.9"
  sha256 arm:   "2e21ea07f0d2855f5de667c58d3af26b8a2e0e1274aa9e72268e5281a102ca98",
         intel: "30a646d4bf8c041ba0f0fe3362a69b94d05a0344ee00b343a9bab3ae4c87f18c"

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
