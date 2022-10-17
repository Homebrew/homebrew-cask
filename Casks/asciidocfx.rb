cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.0"
  sha256 arm:   "5835c695c574f7e351293a7e5da509739f79a2bc49929e025849e982d88d8d98",
         intel: "841c8e88c3796d165df325ee2d0c7d8e379f1b9b31d2be6fef27e507ec895a16"

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
