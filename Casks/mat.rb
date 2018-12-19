cask 'mat' do
  version '1.8.1.20180910'
  sha256 '1cd6163acfe1c49ee993b42f7e34117ad021914d387f28bd5d47c8712581b615'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
