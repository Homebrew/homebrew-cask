cask :v1 => 'eclipse-mat' do
  version '1.5'
  sha256 'e7b2fbb156d8b61c449778756c20a6cf1567c48f7e446752b9fba8e479cd3d4e'

  url 'http://mirror.netcologne.de/eclipse/mat/1.5/rcp/MemoryAnalyzer-1.5.0.20150527-macosx.cocoa.x86_64.zip'
  app 'mat/MemoryAnalyzer.app', :target => 'Memory Analyzer.app'

  name 'Eclipse Memory Analyzer'
  homepage 'http://www.eclipse.org/mat/'
  license :eclipse
end
