cask "devonagent" do
  version "3.12"
  sha256 "17a05a737fb02a2f6f7f2241dca30c6a8b5a5f67e1231626fafd352728534f18"

  url "https://download.devontechnologies.com/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  name "DEVONagent Pro"
  desc "Assistant for efficient web searches"
  homepage "https://www.devontechnologies.com/apps/devonagent"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
    strategy :sparkle do |items|
      items.map(&:version)
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "DEVONagent.app"

  zap trash: [
    "~/Library/Application Scripts/*.devon-technologies.*",
    "~/Library/Application Support/DEVONagent",
    "~/Library/Caches/com.devon-technologies.agent",
    "~/Library/Caches/DEVONagent",
    "~/Library/Caches/TemporaryItems/DEVONagent",
    "~/Library/Containers/com.devon-technologies.get",
    "~/Library/Group Containers/*.devon-technologies.*",
    "~/Library/HTTPStorages/com.devon-technologies.agent",
    "~/Library/Preferences/com.devon-technologies.agent.plist",
    "~/Library/Scripts/Applications/Safari/*DEVONagent*.scpt",
    "~/Library/WebKit/com.devon-technologies.agent",
  ]
end
