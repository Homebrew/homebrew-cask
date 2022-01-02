cask "smartreporter-free" do
  version "3.2.0,2572"
  sha256 "c6217997c0f615d29512ec7cc017cfaee039e42678a9c69f8fe1de15b9804378"

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
