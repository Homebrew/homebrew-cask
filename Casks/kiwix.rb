cask "kiwix" do
  version "2.1.2"
  sha256 "831d3aa0bff98f5cdde9137b9393eb292a8b22f688d59db5fed35341fc65e6f2"

  url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos_#{version}.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  livecheck do
    url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg"
    strategy :header_match
  end

  app "Kiwix.app"
end
