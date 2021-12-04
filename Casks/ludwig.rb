cask "ludwig" do
  version "1.1.7"
  sha256 "808ba9ffabf18aa8b2032bf620dd80f39429efadb1c771d9f091f6c415c1737a"

  url "https://desktop.ludwig.guru/download/#{version}/osx_64"
  name "ludwig"
  desc "Sentence search engine app that helps you write better English"
  homepage "https://ludwig.guru/"

  livecheck do
    url "https://ludwig.guru/download"
    regex(/"macOs".+"version":"(\d+(?:\.\d+)+)"/)
  end

  app "Ludwig.app"

  zap trash: [
    "~/Library/Application Support/Ludwig",
    "~/Library/Caches/guru.ludwig",
    "~/Library/Caches/guru.ludwig.ShipIt",
    "~/Library/Logs/Ludwig",
    "~/Library/Preferences/guru.ludwig.plist",
    "~/Library/Saved Application State/guru.ludwig.savedState",
  ]
end
