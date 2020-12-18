cask "faxbot" do
  version "2.5.1"
  sha256 :no_check

  url "https://www.hosy.de/faxer/Faxer.zip"
  appcast "https://www.hosy.de/faxer/version.xml"
  name "Faxbot"
  desc "Send Faxes via FRITZ!Box"
  homepage "https://www.hosy.de/faxer/"

  app "Faxbot.app"

  zap trash: [
    "~/Library/Application Support/de.hosy.Faxer",
    "~/Library/Application Support/Faxbot",
    "~/Library/Caches/de.hosy.Faxer",
    "~/Library/Preferences/de.hosy.Faxer.plist",
  ]
end
