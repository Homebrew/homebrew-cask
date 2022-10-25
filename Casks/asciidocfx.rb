cask "asciidocfx" do
  arch arm: "_M1"

  version "1.8.1"
  sha256 arm:   "fdaa0c6fec852fb40c3faac8618072fb07ea1e89f0ee3190bb29727fb8097c3a",
         intel: "1ab321db65058f627583d35630b5164b57db40ed97707c8ddf6dac298ca3e148"

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
