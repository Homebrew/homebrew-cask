cask "arq" do
  version "7.1.1"
  sha256 "accbdcebf12c4d397a207ab8d06aaf5e673e64ff00434e9816bf324e9d627e3e"

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
