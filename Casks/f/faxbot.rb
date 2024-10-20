cask "faxbot" do
  version "2.6.2"
  sha256 :no_check

  url "https://www.hosy.de/faxer/Faxer.zip"
  name "Faxbot"
  desc "Send Faxes via FRITZ!Box"
  homepage "https://www.hosy.de/faxer/"

  livecheck do
    url "https://www.hosy.de/faxer/version.xml"
    regex(/Version\s+(\d+(?:\.\d+)*)/i)
    strategy :sparkle do |item, regex|
      item.title[regex, 1]
    end
  end

  depends_on macos: ">= :sierra"

  app "Faxbot.app"

  zap trash: [
    "~/Library/Application Support/de.hosy.Faxer",
    "~/Library/Application Support/Faxbot",
    "~/Library/Caches/de.hosy.Faxer",
    "~/Library/Preferences/de.hosy.Faxer.plist",
  ]
end
