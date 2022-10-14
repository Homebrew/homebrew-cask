cask "arq" do
  version "7.19.7"
  sha256 "878bd139a2ebd15a6100290b8707c411124bbc4cac7fcad7a672a707dc4c0dc5"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version}.pkg"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  livecheck do
    url "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "Arq#{version}.pkg"

  uninstall pkgutil:   "com.haystacksoftware.Arq",
            quit:      "com.haystacksoftware.Arq",
            delete:    [
              "/Applications/Arq.app",
            ],
            launchctl: [
              "com.haystacksoftware.ArqMonitor",
              "com.haystacksoftware.arqagent",
            ]

  zap trash: [
    "~/Library/Arq *",
    "~/Library/Application Support/Arq *",
    "~/Library/Preferences/com.haystacksoftware.Arq.plist",
    "~/Library/Preferences/com.haystacksoftware.ArqMonitor.plist",
    "/Library/Application Support/ArqAgent",
    "/Library/Application Support/ArqAgentAPFS",
  ]
end
