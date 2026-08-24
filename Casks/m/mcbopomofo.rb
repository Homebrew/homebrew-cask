cask "mcbopomofo" do
  version "3.1"
  sha256 "0f940645ee8b471474d2c9e6068edd795b84486bbb396b3ce6757f407ae6e806"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/openvanilla/McBopomofo/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  depends_on :macos

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"

  zap trash: "~/Library/Saved Application State/org.openvanilla.McBopomofo.McBopomofoInstaller.savedState"
end
