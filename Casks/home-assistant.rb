cask "home-assistant" do
  version "2021.7,2021.202"
  sha256 "ad1d58252b9930f04d8c3dbf7bcad51143e4c086c22329479515b39b6dd62334"

  url "https://github.com/home-assistant/iOS/releases/download/release%2F#{version.before_comma}%2F#{version.after_comma}/home-assistant-mac.zip",
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
      "#{version[1]},#{version[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Home Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/io.robbie.HomeAssistant",
    "~/Library/Group Containers/group.io.robbie.homeassistant",
    "~/Library/Containers/io.robbie.HomeAssistant",
  ]
end
