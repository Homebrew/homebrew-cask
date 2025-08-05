cask "arq" do
  version "7.36"
  sha256 "ad3b45c4fe7c9baa8751857e5ad5a33c890c115332b06c5892edca14649ca8d3"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version}.pkg"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  livecheck do
    url "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "Arq#{version}.pkg"
  binary "#{appdir}/Arq.app/Contents/Resources/arqc"

  uninstall launchctl: [
              "com.haystacksoftware.arqagent",
              "com.haystacksoftware.ArqMonitor",
            ],
            quit:      "com.haystacksoftware.Arq",
            pkgutil:   "com.haystacksoftware.Arq",
            delete:    "/Applications/Arq.app"

  zap trash: [
    "/Library/Application Support/ArqAgent",
    "/Library/Application Support/ArqAgentAPFS",
    "~/Library/Application Support/Arq *",
    "~/Library/Arq *",
    "~/Library/Preferences/com.haystacksoftware.Arq.plist",
    "~/Library/Preferences/com.haystacksoftware.ArqMonitor.plist",
  ]
end
