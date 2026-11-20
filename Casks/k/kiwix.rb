cask "kiwix" do
  version "3.18.0"
  sha256 "58744c6301d7ad6cb24c288e04d46c32fa0f032ba66deed1d75f7d2279f946bd"

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
