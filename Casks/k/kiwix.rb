cask "kiwix" do
  version "3.6.0"
  sha256 "2b14b6b803f0d2046b5bb5534ec7d77ba35a82dc904648d83e8e089dc59765b0"

  url "https://download.kiwix.org/release/kiwix-macos/kiwix-macos_#{version}.dmg"
  name "Kiwix"
  desc "App providing offline access to Wikipedia and many other web sites"
  homepage "https://www.kiwix.org/"

  disable! date: "2024-12-02", because: :moved_to_mas

  app "Kiwix.app"

  zap trash: [
    "~/Library/Application Scripts/Kiwix",
    "~/Library/Containers/self.kiwix",
  ]
end
