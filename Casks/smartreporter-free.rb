cask "smartreporter-free" do
  version "3.2.0,2576"
  sha256 "5e22b45fea538245d2100b77d45180e3ff978a473e81a8e624bd497a94adefce"

  url "https://www.corecode.io/downloads/smartreporter_#{version.csv.first}.zip"
  name "SMARTReporter Free"
  desc "Drive failure monitoring tool"
  homepage "https://www.corecode.io/smartreporter/"

  livecheck do
    url "https://www.corecode.io/smartreporter/smartreporter#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SMARTReporter Free.app"

  zap trash: [
    "~/Library/Application Support/SMARTReporter",
    "~/Library/Caches/com.corecode.SMARTReporter",
    "~/Library/Preferences/com.corecode.SMARTReporter.plist*",
    "~/Library/WebKit/com.corecode.SMARTReporter",
  ]
end
