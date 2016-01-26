cask 'cubicsdr' do
  version '0.1.4'
  sha256 '839b44d38e57b8f5931654d9bf119e0a3ef958575a22b16814d11cf68144db5b'

  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'
  license :gpl

  app 'CubicSDR.app'
end
