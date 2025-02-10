cask "mcbopomofo" do
  version "2.9.0"
  sha256 "00ec5f68de9784819aaf7b91585347b6abb380c408591369f4b4710dca525426"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/openvanilla/McBopomofo/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"

  zap trash: "~/Library/Saved Application State/org.openvanilla.McBopomofo.McBopomofoInstaller.savedState"
end
