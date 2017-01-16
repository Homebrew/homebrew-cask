cask 'bitwig-studio' do
  version '1.3.15'
  sha256 '05ab5a7c93d2c917708ca4524151dc77e50252c56f0965a6b0fff5c2897783f8'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'
end
