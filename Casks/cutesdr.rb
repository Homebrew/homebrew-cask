cask :v1 => 'cutesdr' do
  version '1.19'
  sha256 '41bd2ee10bc9dad3da8d3d541452f594b928823946d7a4c52f03164b9af84341'

  url "http://downloads.sourceforge.net/project/cutesdr/CuteSdr#{version.delete('.')}.dmg"
  name 'CuteSDR'
  homepage 'http://sourceforge.net/projects/cutesdr'
  license :oss

  app 'cutesdr.app'
end
