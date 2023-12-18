cask "gpg-sync" do
  version "0.3.6"
  sha256 "3517b53a9a8fd7312b6f5c7d5c425c9facc2cc6cbbadaabd2edb83e07c291c0d"

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync-#{version}.pkg"
  name "GPG Sync"
  homepage "https://github.com/firstlookmedia/gpgsync/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "GPGSync-#{version}.pkg"

  uninstall pkgutil:   "org.firstlook.gpgsync",
            launchctl: "org.firstlook.gpgsync"
end
