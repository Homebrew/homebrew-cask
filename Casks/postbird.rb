cask 'postbird' do
  version '0.8.0'
  sha256 'fa01d2508fa2ec87228eb9f29defe1bfe394093e7cae8255d4d81b0589019eaa'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
