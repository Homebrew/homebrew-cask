cask "asciidocfx" do
  version "1.7.6"
  sha256 "271f0ba474bc007069e62c7e586c741da082dd342099ba0bfa2feab23074930f"

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
