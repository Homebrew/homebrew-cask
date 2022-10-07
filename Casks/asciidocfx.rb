cask "asciidocfx" do
  arch arm: "_M1"

  version "1.7.9"
  sha256 arm:   "0f009aa4539d00ac9508c186520a1fd1c78871caea0cca5e8af7e44ce8d8eb47",
         intel: "9d8d03454c335703d427d6a6444a2251631fe85fba991bd330724b81e75c7c1a"

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
