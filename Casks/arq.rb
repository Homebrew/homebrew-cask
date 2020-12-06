cask "arq" do
  version "6.2.68"
  sha256 "e7c078adde99521e375235d7682331e4520bfad96765a8377b6044ef265d5787"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version.major}.pkg"
  appcast "https://www.arqbackup.com/download/arqbackup/arq6_release_notes.html"
  name "Arq"
  desc "Multi-cloud backup application"
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
