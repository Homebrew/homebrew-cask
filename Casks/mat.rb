cask "mat" do
  version "1.10.0.20200225"
  sha256 "dc711052e9ede8b6e9af0443035cee590bb5d2609705440f32d0ef0d6f66cbf3"

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  appcast "https://www.eclipse.org/mat/downloads.php"
  name "Eclipse Memory Analyzer"
  homepage "https://www.eclipse.org/mat/"

  app "mat.app"
end
