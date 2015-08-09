cask :v1 => 'cutesdr' do
  version '1.18'
  sha256 'b765c33cdf5cc074c0bda15c2a24995546422b4e35209d46966e6fea7e344963'

  url "http://downloads.sourceforge.net/project/cutesdr/CuteSdr#{version.gsub('.','')}.dmg"
  name 'CuteSDR'
  homepage 'http://sourceforge.net/projects/cutesdr'
  license :oss

  app 'cutesdr.app'
end
