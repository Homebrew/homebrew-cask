cask "arq" do
  version "6.2.52"
  sha256 "7c08209d2b8ab572dc78eac0d426f6d891bfd1ecd7138c620ed1caeb1709a208"

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
