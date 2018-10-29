cask 'spreaker-studio' do
  version '1.4.21'
  sha256 'b62cebb7ccd25c0b7c39216ec8f6f0a5fa2a6d299c5baa807edeee61c12a21cc'

  url "https://download.spreaker.com/studio/spreaker-studio-#{version}.dmg"
  name 'Spreaker Studio'
  homepage 'https://www.spreaker.com/download'

  app 'Spreaker Studio.app'
end
