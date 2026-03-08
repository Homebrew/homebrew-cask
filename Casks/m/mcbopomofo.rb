cask "mcbopomofo" do
  version "3.0"
  sha256 "b9495f228e70014d1a763b44a3fe4e89a99cc757c4d539c9a5ffe6f7ada611c5"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/openvanilla/McBopomofo/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"

  zap trash: "~/Library/Saved Application State/org.openvanilla.McBopomofo.McBopomofoInstaller.savedState"
end
