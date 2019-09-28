cask 'mat' do
  version 'S'
  sha256 '8fd4409e2b97c2466a64ea46e44bffe1bb53b42c4ef86e9f4d0c084a0968f027'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://www.eclipse.org/mat/downloads.php'
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
