cask "kiwix" do
  version "3.1.0"
  sha256 "41e25e276ed4945f726cbcaa3e86240ecfff04989000338261567d651a4cd0bd"

  url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos_#{version}.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  livecheck do
    url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg"
    strategy :header_match
  end

  app "Kiwix.app"

  zap trash: [
    "~/Library/Application Scripts/Kiwix",
    "~/Library/Containers/self.kiwix",
  ]
end
