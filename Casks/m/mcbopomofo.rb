cask "mcbopomofo" do
  version "3.1.1"
  sha256 "7e6ae8b717d2c36cbd11a4ad0d23cb8dbaeb6b9e6c48b2de1c4f83655203827a"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  depends_on :macos

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"

  zap trash: "~/Library/Saved Application State/org.openvanilla.McBopomofo.McBopomofoInstaller.savedState"
end
