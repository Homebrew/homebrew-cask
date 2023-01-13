cask "mcbopomofo" do
  version "2.4.2"
  sha256 "2130ec3af669361186f61113d84fda86c4ed5e38987d3be6a9f08b801f73fb56"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
