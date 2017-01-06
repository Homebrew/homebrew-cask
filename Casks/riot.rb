cask 'riot' do
  version '0.9.5'
  sha256 'd0a0717d08fe0a5f797bd079ced8894e68150f8aadb78f590d5b9bd30057666c'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  name 'Riot'
  homepage 'https://riot.im/'

  app 'Riot.app'
end
