cask "teamspeak-client" do
  on_catalina :or_older do
    version "3.5.6"
    sha256 "03c8e44256f2028917866924e496d4704de9e3298252f433fc53cfa37282770e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.6.2"
    sha256 "8a6873589aeb98fdbd9509f2a1163662770f1426aed0757704203de40d71d4d6"

    livecheck do
      url "https://versions.teamspeak.com/ts#{version.major}-client-2"
      regex(/stable.*?v?(\d+(?:\.\d+)+)/i)
    end
  end

  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg",
      verified: "files.teamspeak-services.com/"
  name "TeamSpeak Client"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/ts#{version.major}client_*.plist",
    "~/Library/Application Support/TeamSpeak #{version.major}",
    "~/Library/Preferences/com.teamspeak.TeamSpeak#{version.major}.plist*",
    "~/Library/Saved Application State/com.teamspeak.TeamSpeak#{version.major}.savedState",
  ]
end
