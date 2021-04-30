cask "mat" do
  version "1.11.0.20201202"
  sha256 "01929115ddd07e4d03a01a7b76433a3fd675642ca41c622f9040daec8dbaec79"

  url "https://download.eclipse.org/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.dmg"
  name "Eclipse Memory Analyzer"
  desc "Java heap analyzer"
  homepage "https://www.eclipse.org/mat/"

  livecheck do
    url "https://www.eclipse.org/mat/downloads.php"
    regex(/href=.*?MemoryAnalyzer-(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  app "mat.app"
end
