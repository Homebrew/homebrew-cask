cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.3"
  sha256 arm:   "7a932ce5a72bab2ab763ec86adccf17f36dc647a71438526589f4a052bf3d092",
         intel: "7cb8f03d0817e924e24c98d9c4e677cb66bd682287b4bf2d1c65e6147418cede"

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
