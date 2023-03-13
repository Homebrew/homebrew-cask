cask "ludwig" do
  version "2.1.11"
  sha256 "8f9e0ccf73eeeed97f28d7d7a2b15cf80796c2589981d6a026b175694b0dfbdd"

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
