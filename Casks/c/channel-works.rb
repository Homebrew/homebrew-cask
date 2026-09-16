cask "channel-works" do
  version "12.1.0"
  sha256 "ceab8b3c2e1773fc91ad47feda7b02b503ee4b5bac2e8a1290441dc0389cd12e"

  url "https://github.com/channel-io/channel-works-macos/releases/download/v#{version}/Channel.Works-darwin-universal-#{version}.zip"
  name "Channel Works"
  desc "AI Business OS for customer support, analytics, collaboration, and marketing"
  homepage "https://channel.io/"

  livecheck do
    url "https://raw.githubusercontent.com/channel-io/channel-works-macos/main/desktop-releases.json"
    strategy :json do |json|
      json["latestVersion"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Channel Works.app"

  zap trash: [
    "~/Library/Application Support/Channel Works",
    "~/Library/Containers/com.zoyi.channel.desk.osx",
    "~/Library/Group Containers/8278Q64QFC.com.zoyi.channel.desk.osx",
    "~/Library/Logs/Channel Works",
    "~/Library/Preferences/com.zoyi.channel.desk.osx.plist",
  ]
end
