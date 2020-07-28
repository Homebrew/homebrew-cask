cask "arq" do
  version "6.2.46"
  sha256 "aa3bac1101a1a2eb493351491629a1b72fb95c824908b880d4e2df835a72da9a"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version.major}.pkg"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
  name "Arq"
  homepage "https://www.arqbackup.com/"

  auto_updates true

  pkg "Arq#{version.major}.pkg"

  uninstall pkgutil:   "com.haystacksoftware.Arq",
            quit:      "com.haystacksoftware.Arq",
            launchctl: [
              "com.haystacksoftware.ArqMonitor",
              "com.haystacksoftware.arqagent",
            ]
end
