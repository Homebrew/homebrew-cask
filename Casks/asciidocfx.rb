cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.3"
  sha256 arm:   "07fed75cbab80c143783d6e0c092adfbd6ebea282f527c2ac7b036c5826e3a4d",
         intel: "5a82fae23a172c47c2fd293a08e2ec4b3b6901b9d9ac63b06616aaac7721f745"

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
