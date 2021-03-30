cask "arq" do
  version "7.2.3"
  sha256 "acd2d6d621c9bbc2f064ecde8a8833a5d781e5a5701a2dcde5b6bf04c1fb47b1"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version}.pkg"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  auto_updates true

  pkg "Arq#{version}.pkg"

  uninstall pkgutil:   "com.haystacksoftware.Arq",
            quit:      "com.haystacksoftware.Arq",
            launchctl: [
              "com.haystacksoftware.ArqMonitor",
              "com.haystacksoftware.arqagent",
            ]

  zap trash: [
    "/Library/Application Support/ArqAgentAPFS",
    "/Library/Application Support/ArqAgent",
    "~/Library/Application Support/Arq *",
  ]
end
