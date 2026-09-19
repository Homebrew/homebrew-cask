cask "texturepacker" do
  version "8.3.0"
  sha256 "77891a9afa52c0e67cb26f7bb915b3e3ee77a9558a77681e69d1e7545eae782d"

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
