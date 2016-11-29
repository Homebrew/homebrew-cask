cask 'mat' do
  version '1.6.0.20160531'
  sha256 '300e151bc6bc7e34b196fc50803269f3ce23ad49b0cda9d8335d8861d13ccb64'

  url "http://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
