cask "arq" do
  version "6.2.66"
  sha256 "958654864cd61525ae9e0445aeacc0ef941f991f77f5630c8e557dddcaf56ce5"

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version.major}.pkg"
  appcast "https://www.arqbackup.com"
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
