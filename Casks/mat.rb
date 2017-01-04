cask 'mat' do
  version '1.6.1.20161125'
  sha256 '52dec1806f7490f614a4eba37493db59f96b0d1332cb55bd9de5c1db7563feda'

  url "http://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
