cask 'insync' do
  version '1.3.19.36173'
  sha256 '5d54777fa3fc0a3be58f3beab8c6e556c8ad762085b76dff7491b5e0f6efbd40'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  app 'Insync.app'
end
