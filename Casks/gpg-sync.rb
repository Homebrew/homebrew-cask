cask "gpg-sync" do
  version "0.3.5"
  sha256 "de7fd5fc338d9a993134e79aa13a35d29430fbdf20e9197affadae0b09a7ff53"

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  appcast "https://github.com/firstlookmedia/gpgsync/releases.atom"
  name "GPG Sync"
  homepage "https://github.com/firstlookmedia/gpgsync/"

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   "org.firstlook.gpgsync",
            launchctl: "org.firstlook.gpgsync"
end
