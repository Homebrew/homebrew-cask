cask "texturepacker" do
  version "8.2.2"
  sha256 "4dafd317b7ecb1940c9592be16dfd4acd15811a5efdc2fd2597d8ce91f3a9374"

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
