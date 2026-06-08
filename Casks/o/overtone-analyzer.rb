cask "overtone-analyzer" do
  version "5.11.1.9379"
  sha256 "e5d57ca258173391fc7efdc19328e9cb87a123c4ecd1215e539ae8133bbee410"

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
