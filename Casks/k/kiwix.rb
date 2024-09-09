cask "kiwix" do
  version "3.5.2"
  sha256 "77b97ac91570d0df69b588cc014c71b69478b1a8bdc1c150abd20a612ca1b3f7"

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
