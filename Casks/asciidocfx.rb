cask "asciidocfx" do
  arch arm: "_M1"

  version "1.7.8"
  sha256 arm:   "f7e2bb8c6e91a8afee18225d3032fbe3ac09cb48ffb59ce82829f0d7984c298d",
         intel: "cb8ec4d80127e6521e3a01805d918e4bdf575517ccbc19f6e2283ab73a83275d"

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
