cask 'mat' do
  version '1.9.2.20200115'
  sha256 'ab379da580e07659e713996ed0169375246c88b36245a35c9f375a63c3114655'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://www.eclipse.org/mat/downloads.php'
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
