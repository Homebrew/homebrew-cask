cask "kiwix" do
  version "3.5.1"
  sha256 "a3e52d627ae72e447278528ab97f0341341b2056b5d0d0007a256a58b4772681"

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
