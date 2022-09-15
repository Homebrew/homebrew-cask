cask "ludwig" do
  version "2.0.36"
  sha256 "2bad91e89d3a60f3b985cfbc0bc94ac52d80d8bf0c18f64c53e2c0be47bdb4f9"

  url "https://desktop.ludwig.guru/download/#{version}/osx_64"
  name "ludwig"
  desc "Sentence search engine app that helps you write better English"
  homepage "https://ludwig.guru/"

  livecheck do
    url "https://desktop.ludwig.guru/download/latest/osx_64"
    strategy :header_match
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
