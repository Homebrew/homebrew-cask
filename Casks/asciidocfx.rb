cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.4"
  sha256 arm:   "bbe6bb9b06b1750177dc3adc3c3239c4af00adc720da76ab4422c2aeb76d9c08",
         intel: "0e1d08d79e3b0e69ec33fb544628bc88684fb16d9437aa7694c5d971019a86d5"

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
end
