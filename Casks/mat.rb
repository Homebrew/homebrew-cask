cask 'mat' do
  version '1.8.1.20180910'
  sha256 'f4510b2a3fe1d4ae708dddb280926ee7b86c58fe42dd0705f7fead351a2dceef'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
