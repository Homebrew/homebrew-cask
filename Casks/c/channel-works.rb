cask "channel-works" do
  version "12.0.7"
  sha256 "15f6b8a09240aa91214e7ec9301a87bf4703b7574ad6c830de79922537ffdf43"

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
  depends_on macos: :big_sur

  app "Channel Works.app"

  zap trash: [
    "~/Library/Application Support/Channel Works",
    "~/Library/Containers/com.zoyi.channel.desk.osx",
    "~/Library/Group Containers/8278Q64QFC.com.zoyi.channel.desk.osx",
    "~/Library/Logs/Channel Works",
    "~/Library/Preferences/com.zoyi.channel.desk.osx.plist",
  ]
end
