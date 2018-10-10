cask 'mat' do
  version '1.8.0.20180604'
  sha256 '7cce1d33d8dd3f076c7ae574923b7ad1ce4ea947b8e9ff3f0f88013c8061e9b4'

  url "https://www.eclipse.org/downloads/download.php?r=1&file=/mat/#{version.major_minor}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'

  app 'mat.app'
end
