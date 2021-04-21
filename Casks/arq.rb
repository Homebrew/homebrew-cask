cask "arq" do
  version "7.4.2"
  sha256 "91e47e9f546d43a185c8bdcf8e34b9b92ae8fc79730584fc9462714e42ecba4b"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version}.pkg"
  name "Arq"
  desc "Multi-cloud backup application"
  homepage "https://www.arqbackup.com/"

  livecheck do
    url "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

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
