cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.8"
  sha256 arm:   "05f71fea8d821b1245c8bc8c33efcdca71809b21356926032379bfa9ddc594fb",
         intel: "89b93a3c59b1275629cc0bb9fa872e304a0d1e8faa7dd3e9943e52d8a43cc6cf"

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
