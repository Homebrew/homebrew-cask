cask "home-assistant" do
  version "2023.2.1,2023.452"
  sha256 "07a3e55f21b67185d34b77f0a57474028f5f9d75989ba73e3ff9d94dcd097237"

  url "https://github.com/home-assistant/iOS/releases/download/release%2F#{version.csv.first}%2F#{version.csv.second}/home-assistant-mac.zip",
      verified: "github.com/home-assistant/iOS/"
  name "Home Assistant"
  desc "Companion app for Home Assistant home automation software"
  homepage "https://companion.home-assistant.io/"

  # We use the GitHubLatest strategy as Home Assistant also tags pre-releases, and
  # we also specify a regex since tags are unconventional, e.g. `2021.2.2/2021.55`,
  # and use a custom block to replace the slash with a comma in the resulting version
  livecheck do
    url :url
    strategy :github_latest do |page|
      version = page.match(%r{href=".+/tree/(?:mac|release)/([\d.]+)/([\d.]+)"}i)
      next if version.blank?

      "#{version[1]},#{version[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Home Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/io.robbie.HomeAssistant",
    "~/Library/Containers/io.robbie.HomeAssistant",
    "~/Library/Group Containers/group.io.robbie.homeassistant",
  ]
end
