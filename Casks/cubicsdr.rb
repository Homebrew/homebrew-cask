cask 'cubicsdr' do
  version '0.2.4'
  sha256 'bdbb2cce55b4a70351527bcaca0b62b4e360ffdece269a20c107e68f229c33cf'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
