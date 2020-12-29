cask "mat" do
  version "1.11.0.20201202"
  sha256 "e2edd8875aa5a100cf30f1423830cb1ecabbdc4414fbf7dd47c658547631916b"

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  appcast "https://www.eclipse.org/mat/downloads.php"
  name "Eclipse Memory Analyzer"
  homepage "https://www.eclipse.org/mat/"

  app "mat.app"
end
