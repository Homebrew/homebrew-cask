cask "kiwix" do
  version "3.19.0"
  sha256 "5080cf2a25f9c13e4820e2775256d16feb02221152ea5c48e31e497a525b9b67"

  url "https://download.kiwix.org/release/kiwix-macos/kiwix-macos_#{version}.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  livecheck do
    url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "Kiwix.app"

  zap trash: [
    "~/Library/Application Scripts/Kiwix",
    "~/Library/Application Scripts/self.Kiwix",
    "~/Library/Containers/self.kiwix",
  ]
end
