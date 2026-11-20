cask "texturepacker" do
  version "9.0.0"
  sha256 "5d95979bfed7dbd7ded5fee7899c32e96b4b352429476d14f73c2a81119e150e"

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}.dmg"
  name "TexturePacker"
  desc "Game sprite sheet packer"
  homepage "https://www.codeandweb.com/texturepacker"

  livecheck do
    url "https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "TexturePacker.app"

  uninstall quit:   "de.code-and-web.TexturePacker",
            delete: "/usr/local/bin/TexturePacker"

  zap trash: [
    "~/Library/Caches/code-and-web.de/TexturePacker",
    "~/Library/Preferences/de.code-and-web.TexturePacker.plist",
    "~/Library/Saved Application State/de.code-and-web.TexturePacker.savedState",
  ]
end
