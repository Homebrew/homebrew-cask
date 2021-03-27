cask "faxbot" do
  version "2.6,201218.1"
  sha256 :no_check

  url "https://www.hosy.de/faxer/Faxer.zip"
  name "Faxbot"
  desc "Send Faxes via FRITZ!Box"
  homepage "https://www.hosy.de/faxer/"

  livecheck do
    url "https://www.hosy.de/faxer/version.xml"
    strategy :sparkle do |item|
      "#{item.title[/Version (\d+(?:\.\d+)*)/i, 1]},#{item.version}"
    end
  end

  app "Faxbot.app"

  zap trash: [
    "~/Library/Application Support/de.hosy.Faxer",
    "~/Library/Application Support/Faxbot",
    "~/Library/Caches/de.hosy.Faxer",
    "~/Library/Preferences/de.hosy.Faxer.plist",
  ]
end
