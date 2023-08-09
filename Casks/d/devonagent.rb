cask "devonagent" do
  version "3.11.7"
  sha256 "7b59ba4b3e3f681b5c8bc14ec8792bf7ea069480ab81bdf655b64567cee6aec7"

  url "https://download.devontechnologies.com/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  name "DEVONagent Pro"
  desc "Tool to help searching the web more efficiently"
  homepage "https://www.devontechnologies.com/apps/devonagent"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "DEVONagent.app"

  zap trash: [
    "~/Library/Application Scripts/*.devon-technologies.*",
    "~/Library/Application Support/DEVONagent",
    "~/Library/Caches/DEVONagent",
    "~/Library/Scripts/Applications/Safari/*DEVONagent*.scpt",
    "~/Library/Caches/TemporaryItems/DEVONagent",
    "~/Library/Caches/com.devon-technologies.agent",
    "~/Library/Containers/com.devon-technologies.get",
    "~/Library/Group Containers/*.devon-technologies.*",
    "~/Library/Group Containers/*.devon-technologies.*",
    "~/Library/HTTPStorages/com.devon-technologies.agent",
    "~/Library/Preferences/com.devon-technologies.agent.plist",
    "~/Library/WebKit/com.devon-technologies.agent",
  ]
end
