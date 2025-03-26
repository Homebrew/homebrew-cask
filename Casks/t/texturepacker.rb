cask "texturepacker" do
  version "7.6.1"
  sha256 "17727ee27f28454646e9ac4426bf1d74b82e91e99452d115e3ccc9c3258bd088"

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}.dmg"
  name "TexturePacker"
  desc "Game sprite sheet packer"
  homepage "https://www.codeandweb.com/texturepacker"

  livecheck do
    url "https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml"
    strategy :sparkle
  end

  app "TexturePacker.app"

  uninstall delete: "/usr/local/bin/TexturePacker"

  zap trash: [
    "~/Library/Caches/code-and-web.de/TexturePacker",
    "~/Library/Preferences/de.code-and-web.TexturePacker.plist",
    "~/Library/Saved Application State/de.code-and-web.TexturePacker.savedState",
  ]
end
