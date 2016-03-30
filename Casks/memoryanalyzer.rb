cask 'memoryanalyzer' do
  version '1.5.0.20150527'
  sha256 'e7b2fbb156d8b61c449778756c20a6cf1567c48f7e446752b9fba8e479cd3d4e'

  url "http://www.eclipse.org/downloads/download.php?file=/mat/#{version.to_f}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.x86_64.zip&r=1"
  name 'Eclipse Memory Analyzer'
  homepage 'https://www.eclipse.org/mat/'
  license :eclipse

  app 'mat/MemoryAnalyzer.app'
end
