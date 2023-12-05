cask "mcbopomofo" do
  version "2.6"
  sha256 "8051b73b3d3fa4ce2d887139540d71fba7389cd69c2e401d12a3086d185bb391"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
