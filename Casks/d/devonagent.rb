cask "devonagent" do
  version "3.11.8"
  sha256 "81809652d8821376d3c6df1b68212c61944ec18a874e1c49a310a535050e36fc"

  url "https://download.devontechnologies.com/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  name "DEVONagent Pro"
  desc "Tool to help searching the web more efficiently"
  homepage "https://www.devontechnologies.com/apps/devonagent"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
    strategy :sparkle do |items|
      items.map(&:version)
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "DEVONagent.app"

  zap trash: [
    "~/Library/Application Scripts/*.devon-technologies.*",
    "~/Library/Application Support/DEVONagent",
    "~/Library/Caches/com.devon-technologies.agent",
    "~/Library/Caches/DEVONagent",
    "~/Library/Caches/TemporaryItems/DEVONagent",
    "~/Library/Containers/com.devon-technologies.get",
    "~/Library/Group Containers/*.devon-technologies.*",
    "~/Library/Group Containers/*.devon-technologies.*",
    "~/Library/HTTPStorages/com.devon-technologies.agent",
    "~/Library/Preferences/com.devon-technologies.agent.plist",
    "~/Library/Scripts/Applications/Safari/*DEVONagent*.scpt",
    "~/Library/WebKit/com.devon-technologies.agent",
  ]
end
