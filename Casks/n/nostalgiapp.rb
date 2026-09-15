cask "nostalgiapp" do
  version "1.2.0.16,183"
  sha256 "4a4f80acaaccca7638421814dda3770d038ce09c8d85f7975d755e6dbfc134d9"

  url "https://www.nostalgi.app/downloads/NostalgiApp-#{version.csv.first}#{"-b#{version.csv.second}" if version.csv.second}.dmg"
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

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "NostalgiApp.app"

  uninstall quit: "com.nostalgi.app"

  zap trash: [
    "~/Library/Application Support/NostalgiApp",
    "~/Library/Caches/com.nostalgi.app",
    "~/Library/HTTPStorages/com.nostalgi.app",
    "~/Library/Logs/NostalgiApp",
    "~/Library/Preferences/com.nostalgi.app.plist",
  ]
end
