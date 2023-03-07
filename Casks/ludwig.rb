cask "ludwig" do
  version "2.1.10"
  sha256 "427a8f3f090795cf556b5fdbcb75b5a40ee9bf3d29e8784d611c1e8f78a81e21"

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
