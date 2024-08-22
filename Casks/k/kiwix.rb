cask "kiwix" do
  version "3.5.0"
  sha256 "c000f9011588b43b35b2d24204242965b324945a6b7a7a05999c61e2d0addf61"

  url "https://download.kiwix.org/release/kiwix-macos/kiwix-macos_#{version}.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  livecheck do
    url "https://download.kiwix.org/release/kiwix-macos/kiwix-macos.dmg"
    strategy :header_match
  end

  app "Kiwix.app"

  zap trash: [
    "~/Library/Application Scripts/Kiwix",
    "~/Library/Containers/self.kiwix",
  ]
end
