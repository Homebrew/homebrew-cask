cask "nostalgiapp" do
  version "1.2.6.6,220"
  sha256 "b2e065d5f6cfc78276ce34acbc746628c8e504011c93d059711ed90dfc5798f2"

  build_suffix = "-b#{version.csv.second}" if version.csv.second
  url "https://www.nostalgi.app/downloads/NostalgiApp-#{version.csv.first}#{build_suffix}.dmg"
  name "NostalgiApp"
  desc "Launcher for eXoDOS and retro game collections"
  homepage "https://www.nostalgi.app/"

  # The `sparkle:version` corresponds to the number in the file name suffix
  # (e.g. `-b123`) but we match against the URL instead of using `nice_version`
  # because we only want to include the second number in the version if it's
  # used in the URL.
  livecheck do
    url "https://www.nostalgi.app/appcast.xml"
    regex(/NostalgiApp[._-]v?(\d+(?:\.\d+)+)(?:[._-]b(\d+))?/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next unless match

      match.values_at(1, 2).compact_blank.join(",")
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "NostalgiApp.app"

  uninstall quit: "com.nostalgi.app"

  zap trash: [
    "~/Library/Application Support/NostalgiApp",
    "~/Library/Caches/com.nostalgi.app",
    "~/Library/Caches/com.nostalgi.app.*.json",
    "~/Library/Caches/NostalgiApp",
    "~/Library/HTTPStorages/com.nostalgi.app",
    "~/Library/Logs/NostalgiApp",
    "~/Library/Preferences/com.nostalgi.app.plist",
    "~/Library/WebKit/com.nostalgi.app",
  ]
end
