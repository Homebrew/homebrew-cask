cask 'seaglass' do
  version '0.0.493-2695641'
  sha256 '9d4456df58a96ab57443b4bde76d9397ea8e1981bad2d41b1c9952e21473fcfd'

  # github.com/neilalexander/seaglass was verified as official when first introduced to the cask
  url "https://github.com/neilalexander/seaglass/releases/download/#{version}/Seaglass-#{version}.zip"
  appcast 'https://github.com/neilalexander/seaglass/releases.atom'
  name 'Seaglass'
  homepage 'https://neilalexander.eu/seaglass/'

  auto_updates true

  app 'Seaglass.app'
end
