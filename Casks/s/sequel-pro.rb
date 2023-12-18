cask "sequel-pro" do
  version "1.1.2"
  sha256 "7b34fd63c13e9e9ca4f87d548241ff9df9a266b554af23549efd7be006f387c6"

  url "https://github.com/sequelpro/sequelpro/releases/download/release-#{version}/sequel-pro-#{version}.dmg",
      verified: "github.com/sequelpro/sequelpro/"
  name "Sequel Pro"
  desc "MySQL/MariaDB database management platform"
  homepage "https://www.sequelpro.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Sequel Pro.app"

  zap trash: [
    "~/Library/Application Support/Sequel Pro",
    "~/Library/Caches/com.sequelpro.SequelPro",
    "~/Library/Preferences/com.sequelpro.SequelPro.plist",
    "~/Library/Saved Application State/com.sequelpro.SequelPro.savedState",
  ]

  caveats do
    <<~EOS
      #{token} has been deprecated in favor of Sequel Ace.
        brew install --cask sequel-ace
    EOS
  end
end
