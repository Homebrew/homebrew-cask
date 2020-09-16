cask "lunar" do
  version "3.2.3"
  sha256 "88bf404e03364eaf2b33aad449cddc1d80d9e21b5f99e35db2bc2db636b9c48d"

  url "https://lunar.fyi/download/#{version}"
  appcast "https://lunar.fyi/appcast.xml"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Lunar.app"

  zap trash: [
    "~/Library/Application Support/Lunar",
    "~/Library/Application Support/site.lunarapp.Lunar",
    "~/Library/Preferences/site.lunarapp.Lunar.plist",
  ]
end
