cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.2"
  sha256 arm:   "0f3dc9213813ff35db24767953628f57b7376f105ca83cf5fec15e93e3cf957f",
         intel: "132d47283f1ce5574a82d28e5d4e7b2e15cdd347776c542faae7b434c3e2dca8"

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
