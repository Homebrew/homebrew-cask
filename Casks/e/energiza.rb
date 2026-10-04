cask "energiza" do
  version "1.3.6"
  sha256 :no_check

  url "https://appgineers.de/energiza/files/Energiza.zip"
  name "Energiza Pro"
  desc "Charging manager for your MacBooks"
  homepage "https://appgineers.de/energiza/"

  livecheck do
    url "https://appgineers.de/energiza/files/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :monterey

  app "Energiza.app"

  uninstall quit: "de.appgineers.energiza"

  zap trash: [
    "~/Library/Application Support/Energiza",
    "~/Library/Caches/de.appgineers.energiza",
    "~/Library/HTTPStorages/de.appgineers.energiza",
    "~/Library/HTTPStorages/de.appgineers.energiza.binarycookies",
    "~/Library/Preferences/de.appgineers.energiza.plist",
  ]
end
