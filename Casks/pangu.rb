cask :v1 => 'pangu' do
  version '1.1'
  sha256 'aa09673355f11a2b0974757f88b61e497156020bf551afde556ce11d843e2a54'

  url "http://dl.pangu.25pp.com/jb/Pangu_v#{version}.dmg"
  homepage 'http://en.pangu.io/'
  license :unknown

  app 'pangu.app'
end
