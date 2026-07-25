cask "texturepacker" do
  version "8.1.0"
  sha256 "1b1710c5ba8dc523feadece5aa9997933608d4f9d8356ee75dfd0b20b00fecfb"

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}.dmg"
  name "TexturePacker"
  desc "Game sprite sheet packer"
  homepage "https://www.codeandweb.com/texturepacker"

  livecheck do
    url "https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml"
    strategy :sparkle
  end

  depends_on macos: :ventura

  app "TexturePacker.app"

  uninstall delete: "/usr/local/bin/TexturePacker"

  zap trash: [
    "~/Library/Caches/code-and-web.de/TexturePacker",
    "~/Library/Preferences/de.code-and-web.TexturePacker.plist",
    "~/Library/Saved Application State/de.code-and-web.TexturePacker.savedState",
  ]
end
