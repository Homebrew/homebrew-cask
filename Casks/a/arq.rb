cask "arq" do
  version "7.36.2"
  sha256 "f9ef234989cf35158ff86696539b0ae9eecebc0774f2efa602e670816be249d0"

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
