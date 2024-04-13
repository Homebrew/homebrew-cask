cask "mcbopomofo" do
  version "2.7.2"
  sha256 "deb8e70fb88b7cdcad217e90010e5d4a9324b5a8b2093f37a42ac1bf5dc485b4"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/openvanilla/McBopomofo/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
