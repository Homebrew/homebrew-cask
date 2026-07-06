cask "texturepacker" do
  version "8.0.3"
  sha256 "8854094ff7c6c28a3fd923fe81d4dca50e9c452c742228ca4f22920754aa0157"

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
