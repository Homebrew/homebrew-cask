cask "home-assistant" do
  version "2026.9.2,2026.2995"
  sha256 "840bc23f4a4911a06293156c43d3c4f58950c857d3726c9f2825e7ca61015cf6"

  url "https://github.com/home-assistant/iOS/releases/download/release%2F#{version.csv.first}%2F#{version.csv.second}/home-assistant-mac.zip"
  name "Home Assistant"
  desc "Companion app for Home Assistant home automation software"
  homepage "https://companion.home-assistant.io/"

  livecheck do
    url :url
    regex(%r{^(?:mac|release)/(\d+(?:\.\d+)+)/(\d+(?:\.\d+)*)}i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :ventura

  app "Home Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/io.robbie.HomeAssistant",
    "~/Library/Containers/io.robbie.HomeAssistant",
    "~/Library/Group Containers/group.io.robbie.homeassistant",
  ]
end
