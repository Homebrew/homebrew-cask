cask "mcbopomofo" do
  version "2.7"
  sha256 "1a21f44811a1086767991c955e03a129e8c62c0ff8ed8f7c228bc0d5380057cf"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
