cask "arq" do
  version "7.10"
  sha256 "79b9f196ee7e4d02a04eb2cf03e5a886dd5a67513840d21f13aae8cb281457f0"

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
            delete:    "/Applications/Arq.app",
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
