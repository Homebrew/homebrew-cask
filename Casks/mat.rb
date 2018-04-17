cask 'mat' do
  version '1.7.0.20170613'
  sha256 '71b0a9f6fa2e77ed1db618768f2240a7bdd512327ca1c45fdbed415beea07327'

  url "http://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
