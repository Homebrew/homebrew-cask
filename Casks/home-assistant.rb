cask "home-assistant" do
  version "2021.8,2021.216"
  sha256 "9ed94c946a90870d24b31449ccf3fce02691419da7487b5d4d432db3c59d697b"

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
