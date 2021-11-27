cask "mcbopomofo" do
  version "1.1"
  sha256 "d100b3a020e0ce88f898501ee6f3d359310bfdc0c5c2f97237099aaaa8a2474f"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/"
  name "McBopomofo"
  desc "input method for Bopomofo(Phonetic Symbols of Mandarin Chinese) user"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
