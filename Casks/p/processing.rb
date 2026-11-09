cask "processing" do
  arch arm: "aarch64", intel: "x64"

  version "4.5.7,1435"
  sha256 arm:   "27fb4bb8d5fb785c02cc6987649e215b224d49a3ad9ae7dbedc3a8ccf981cae9",
         intel: "d22d90852cf6f9d1dbc0bf4152691baa98820a36ea93acafea942ebbd6a2d5e5"

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
