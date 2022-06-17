cask "mat" do
  version "1.13.0.20220615"
  sha256 "5e866ce672f2d800b902f017edc266406ef1c895e6defde0aac5d895d7966b98"

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
