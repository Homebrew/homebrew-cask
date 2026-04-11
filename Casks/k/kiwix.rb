cask "kiwix" do
  version "3.14.0"
  sha256 "ad57e8260f154f2105e8a78c1883935228edcfc3add037ab6b2acf82ce968def"

  url "https://download.kiwix.org/release/kiwix-macos/kiwix-macos_#{version}.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  livecheck do
    url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg"
    strategy :header_match
  end

  depends_on macos: ">= :sonoma"

  app "Kiwix.app"

  zap trash: [
    "~/Library/Application Scripts/Kiwix",
    "~/Library/Containers/self.kiwix",
  ]
end
