cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.5.8,1436"
  sha256 arm:   "6c77d5e4849f56d9d4ea38555b8aff94eb12f84ddffb1cc783d99f79e8ea2d8f",
         intel: "33db1018bbea4bc56232c0d1a01b4f0cab97222f96e9604341d3eecbaecda055"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-#{arch}.dmg"
  name "Processing"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  # GitHub releases may not always provide macOS files at the time the release
  # is created. The first-party download page links to GitHub release assets,
  # so we can use that to identify the latest stable release with a macOS file.
  livecheck do
    url "https://processing.org/page-data/download/page-data.json"
    regex(/^processing[._-](\d+(?:\.\d+)*)[@_-](\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json.dig("result", "data", "releases", "nodes")&.filter_map do |node|
        match = node.dig("childJson", "tagName")&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on :macos

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Preferences/org.processing.app.plist",
    "~/Library/Preferences/org.processing.four.plist",
    "~/Library/Preferences/processing.app.tools.plist",
    "~/Library/Processing",
  ]
end
