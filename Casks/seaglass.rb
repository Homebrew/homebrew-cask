cask 'seaglass' do
  version '0.0.520-f697a8c'
  sha256 '9f62b36e19981c0843d4296d2e0ae4ca614df489da60e76df04608c75f599b4c'

  # github.com/neilalexander/seaglass was verified as official when first introduced to the cask
  url "https://github.com/neilalexander/seaglass/releases/download/#{version}/Seaglass-#{version}.zip"
  appcast 'https://github.com/neilalexander/seaglass/releases.atom'
  name 'Seaglass'
  homepage 'https://neilalexander.eu/seaglass/'

  auto_updates true

  app 'Seaglass.app'
end
