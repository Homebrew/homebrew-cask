cask :v1 => 'curse-voice' do
  version :latest
  sha256 :no_check

  url 'http://beta.cursevoice.com/download?platform=mac'
  name 'Curse Voice'
  homepage 'http://beta.cursevoice.com/'
  license :unknown

  app 'Curse.app'
end
