cask 'curse' do
  version :latest
  sha256 :no_check

  url 'http://beta.cursevoice.com/download?platform=mac'
  name 'Curse Voice'
  homepage 'http://beta.cursevoice.com/'
  license :freemium

  app 'Curse.app'
end
