cask "kiwix" do
  version "3.0.0"
  sha256 "ca6f68dd9ccaca1bd4b4648e95ce038a6980631f8db03c61e578404ddd1c4d8c"

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
