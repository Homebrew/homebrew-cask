cask "mcbopomofo" do
  version "2.5"
  sha256 "59bbaddd413814b83b2ac0656b203d0409a83f2f708ce876f6c8bb36bab0dbda"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
