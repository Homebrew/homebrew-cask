cask 'mat' do
  version '1.9.0.20190605'
  sha256 '62704e6a291403575b1c4ee7e7d0c6bd0bc5b479e4034c513d4ee37b52e665d8'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://www.eclipse.org/mat/downloads.php'
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
