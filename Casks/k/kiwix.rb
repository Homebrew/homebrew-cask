cask "kiwix" do
  version "3.4.0"
  sha256 "a638e4b536ce49feea6c51480c04003bf3c103d428c98aec0516961286cd6f23"

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
