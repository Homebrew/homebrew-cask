cask "kiwix" do
  version "2.1.2"
  sha256 "831d3aa0bff98f5cdde9137b9393eb292a8b22f688d59db5fed35341fc65e6f2"

  url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  app "Kiwix.app"
end
