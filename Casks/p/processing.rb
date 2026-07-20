cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.5.5,1433"
  sha256 arm:   "5bd8e6ad2b9250921cc5d85f9dae16b1eed109ba278976da3e4f96e81d81ef48",
         intel: "1a0d95f381b1ef5173bcbeaa8ecac0c9e0f208a4d94031c113c1bd932114578d"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-#{arch}.dmg",
      verified: "github.com/processing/processing4/"
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

  conflicts_with cask: "processing@3"
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
