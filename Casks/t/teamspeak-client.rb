cask "teamspeak-client" do
  on_catalina :or_older do
    version "3.5.6"
    sha256 "03c8e44256f2028917866924e496d4704de9e3298252f433fc53cfa37282770e"

    url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg",
        verified: "files.teamspeak-services.com/"

    livecheck do
      url "https://versions.teamspeak.com/ts#{version.major}-client-2"
      regex(/stable.*?v?(\d+(?:\.\d+)+)/i)
    end
  end
  on_big_sur :or_newer do
    version "3.6.1"
    sha256 "2312e39ea680da1c728d4589f51fbe80c52e3a33b8b3f9ad485ccd29179cfdf9"

    url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg",
        verified: "files.teamspeak-services.com/"

    livecheck do
      skip "No version information available"
    end
  end

  name "TeamSpeak Client"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"

  zap trash: [
    "~/Library/Application Support/TeamSpeak #{version.major}",
    "~/Library/Application Support/CrashReporter/ts#{version.major}client_*.plist",
    "~/Library/Preferences/com.teamspeak.TeamSpeak#{version.major}.plist*",
    "~/Library/Saved Application State/com.teamspeak.TeamSpeak#{version.major}.savedState",
  ]
end
