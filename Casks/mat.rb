cask 'mat' do
  version '1.9.1.20190826'
  sha256 '19a1c69cd008a0ac7da5f86bf8f89cb4c77a80187b8d70f5938992a08e2e4eb2'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://www.eclipse.org/mat/downloads.php'
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
