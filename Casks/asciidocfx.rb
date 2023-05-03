cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.5"
  sha256 arm:   "5f7e4213e057728c91d966a476344c6d182322f684305049d68e2e11a34b47aa",
         intel: "fdca40e3fb8b9c4e6bcfbfad736c210b04d4938341ac51b1d76603e44158a909"

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
