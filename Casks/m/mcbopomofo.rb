cask "mcbopomofo" do
  version "2.9.3"
  sha256 "6091117b17b79a82e7646b5d6b89906f725c65540fa92b8850cc761cbd63e688"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/openvanilla/McBopomofo/"
  name "McBopomofo"
  desc "Input method for Bopomofo (Phonetic Symbols of Mandarin Chinese)"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"

  zap trash: "~/Library/Saved Application State/org.openvanilla.McBopomofo.McBopomofoInstaller.savedState"
end
