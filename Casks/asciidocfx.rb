cask "asciidocfx" do
  arch arm: "_M1"

  version "1.7.7"
  sha256 arm:   "1f6779d46ff4a7452e53fbea2a5d7fbe72e5ad55a823307595ba936403cfd2b0",
         intel: "84c2e92655551c2a02ed400815b6a004631ba6f2db9be6a0ab86e9be6b838f9f"

  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac#{arch}.dmg",
      verified: "github.com/asciidocfx/AsciidocFX/"
  name "AsciidocFX"
  desc "Asciidoc Editor and Toolchain to build books, documents and slides"
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
end
