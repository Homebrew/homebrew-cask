cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.5"
  sha256 arm:   "b2f45e9a73e60b476e7b849f18f27eec6c05c8fa2b9f0021337e6056cd6d8180",
         intel: "3cc3bc2061e99b4bb9c7dc45b48510a5d28d755bad256ebf77e890cb63414edf"

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
