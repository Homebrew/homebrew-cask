cask :v1 => 'cutesdr' do
  version '1.16'
  sha256 '2b82f5b1e7e2dace30fdf96ae9cdfff71bc20367343152bee9a1739e94bdc05a'

  url "http://downloads.sourceforge.net/project/cutesdr/CuteSdr#{version.gsub('.','')}.dmg"
  name 'CuteSDR'
  homepage 'http://sourceforge.net/projects/cutesdr'
  license :oss

  app 'cutesdr.app'
end
