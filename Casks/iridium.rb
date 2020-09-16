cask "iridium" do
  version "2020.04.81.0"
  sha256 "d7295ffde57bb18057fd61f8458c01a16a062658448a96c87db5ec75ed1977eb"

  url "https://downloads.iridiumbrowser.de/macos/#{version.major_minor}-0/iridiumbrowser-#{version}.dmg"
  appcast "https://iridiumbrowser.de/news/",
          must_contain: version.major_minor
  name "Iridium Browser"
  homepage "https://iridiumbrowser.de/"

  app "Iridium.app"

  zap trash: [
    "~/Library/Preferences/de.iridiumbrowser.plist",
    "~/Library/Caches/de.iridiumbrowser",
    "~/Library/Application Support/Iridium",
    "~/Library/Saved Application State/de.iridiumbrowser.savedState",
  ]
end
