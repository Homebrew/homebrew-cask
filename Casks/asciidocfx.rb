cask "asciidocfx" do
  version "1.7.4"
  sha256 "c5f7beaa9279702f35b5373d8100f20dbe3b6dc17b2c8f341f34f339659b7a10"

  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac.dmg",
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
