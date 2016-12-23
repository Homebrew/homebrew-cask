cask 'eaglefiler' do
  version '1.7.2'
  sha256 '08384ff0b8247ec70eedbac14b6b1bcb0a2fa9b1fd20cb00927a2b8754c164a1'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
