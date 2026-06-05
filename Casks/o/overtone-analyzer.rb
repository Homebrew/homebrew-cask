cask "overtone-analyzer" do
  version "5.11.0.9351"
  sha256 "9bd74dc0580855a68968afc38110ef2c789ae364ba22c907134fbb33390b9c9a"

  url "https://download.sygyt.com/#{version.major_minor_patch}/OvertoneAnalyzer_macOS_#{version}.dmg"
  name "Overtone Analyzer"
  desc "Real-time voice spectrum analyzer and audio editor"
  homepage "https://www.sygyt.com/"

  livecheck do
    url "https://www.sygyt.com/dwnld/512/"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "Overtone Analyzer.app"

  zap trash: [
    "~/Library/Application Support/Sygyt Software/Overtone Analyzer",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sygyt.mac.OvertoneAnalyzer",
    "~/Library/Caches/Sygyt Software/Overtone Analyzer",
    "~/Library/Preferences/com.sygyt.mac.OvertoneAnalyzer.plist",
    "~/Library/Preferences/com.sygyt.Overtone Analyzer.plist",
  ]
end
