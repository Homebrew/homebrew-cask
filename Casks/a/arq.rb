cask "arq" do
  version "7.26.1"
  sha256 "cedbc5fb881fee7b782e99d0b0b7508181571972cfc2fb63902e1eab50e1eee8"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version}.pkg"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  livecheck do
    url "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "Arq#{version}.pkg"

  uninstall pkgutil:   "com.haystacksoftware.Arq",
            quit:      "com.haystacksoftware.Arq",
            delete:    "/Applications/Arq.app",
            launchctl: [
              "com.haystacksoftware.arqagent",
              "com.haystacksoftware.ArqMonitor",
            ]

  zap trash: [
    "/Library/Application Support/ArqAgent",
    "/Library/Application Support/ArqAgentAPFS",
    "~/Library/Application Support/Arq *",
    "~/Library/Arq *",
    "~/Library/Preferences/com.haystacksoftware.Arq.plist",
    "~/Library/Preferences/com.haystacksoftware.ArqMonitor.plist",
  ]
end
