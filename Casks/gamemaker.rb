cask "gamemaker" do
  version "2022.6.1.26"
  sha256 "6d9414b73bbbd162d0277b07ef507ae3c78fe6307351f0883e04bfb2e586f036"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg",
      verified: "https://gms.yoyogames.com/"
  name "GameMaker"
  desc "Complete development tool for making 2D games, used by indie developers, professional studios, and educators worldwide"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gms.yoyogames.com/update-mac.rss"
    strategy :sparkle
  end

  pkg "GameMaker-#{version}.pkg"

  uninstall pkgutil: "com.yoyogames.gms2"
end
