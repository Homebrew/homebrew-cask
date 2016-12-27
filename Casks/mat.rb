cask 'mat' do
  version '1.6.1.20161125'
  sha256 'b2dd323c5d09db97e17ed2c3cf97b15b7f13fe434417fa4ea50dd57577ee78fd'

  url "http://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
