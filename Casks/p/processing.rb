cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.4.1,1301"
  sha256 arm:   "773f30706da504ef205b64c08b5eb31ecd4e26e4bc00a806ec6877c35602bac2",
         intel: "85755de2ec4c4d5f60bb533e80d73a4be41cadfa3e18c0e11d45a0d6f6dacb7a"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-#{arch}.dmg",
      verified: "github.com/processing/processing4/"
  name "Processing"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  livecheck do
    url "https://processing.org/page-data/download/page-data.json"
    regex(/^processing[._-](\d+(?:\.\d+)*)[@_-](\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json.dig("result", "data", "releases", "nodes")&.map do |node|
        match = node.dig("childJson", "tagName")&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: "processing@3"
  depends_on macos: ">= :mojave"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Preferences/org.processing.app.plist",
    "~/Library/Preferences/org.processing.four.plist",
    "~/Library/Preferences/processing.app.tools.plist",
    "~/Library/Processing",
  ]
end
