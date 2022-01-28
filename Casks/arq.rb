cask "arq" do
  version "7.13.2"
  sha256 "b85fb84475dd60f553e7da360178faf41bc78a433d5c28a4f7f398aee4dad67d"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version}.pkg"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  livecheck do
    url "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  pkg "Arq#{version}.pkg"

  uninstall pkgutil:   "com.haystacksoftware.Arq",
            quit:      "com.haystacksoftware.Arq",
            delete:    [
              "/Applications/Arq.app",
              "/Library/Application Support/ArqAgent",
              "/Library/Application Support/ArqAgentAPFS",
            ],
            launchctl: [
              "com.haystacksoftware.ArqMonitor",
              "com.haystacksoftware.arqagent",
            ]

  zap trash: "~/Library/Application Support/Arq *"
end
