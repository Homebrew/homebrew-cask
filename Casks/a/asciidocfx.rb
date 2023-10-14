cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.6"
  sha256 arm:   "12b6eaad44c25243d4c3ddd3594fc8e76a8ead2ae14fc45e011ba3fe70dfa036",
         intel: "cb8c1d71d77b7a5516e81ea775c6b7596d5d253016e3d7590a9f160653822a4f"

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

  zap trash:  [
        "~/.AsciidocFX-#{version}",
        "~/Library/Preferences/com.install4j.7853-9376-5862-1224.24.plist",
        "~/Library/Preferences/com.install4j.installations.plist",
        "~/Library/Saved Application State/com.install4j.7853-9376-5862-1224.24.savedState",
      ],
      delete: "/Library/Preferences/com.install4j.installations.plist"
end
