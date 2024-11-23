cask "devonagent" do
  on_high_sierra :or_older do
    version "3.11.5"
    sha256 "f7be6f9eac577e30bbe2c230c83fa865cdb8234c89aa7f36f6dd8368b1b4d915"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "3.11.9"
    sha256 "f6d6544926de83c11943737150605b386037d29803fa0b99c01b9613ff44e96d"

    livecheck do
      url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
      strategy :sparkle do |items|
        items.map(&:version)
      end
    end
  end

  url "https://download.devontechnologies.com/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  name "DEVONagent Pro"
  desc "Assistant for efficient web searches"
  homepage "https://www.devontechnologies.com/apps/devonagent"

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
