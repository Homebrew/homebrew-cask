cask "ludwig" do
  version "3.1.8"
  sha256 :no_check

  url "https://desktop.ludwig.guru/download/latest",
      user_agent: :browser
  name "ludwig"
  desc "Sentence search engine app that helps you write better English"
  homepage "https://ludwig.guru/"

  livecheck do
    url :url, user_agent: :browser
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
