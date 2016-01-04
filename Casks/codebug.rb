cask 'codebug' do
  version :latest
  sha256 :no_check

  url 'http://codebugapp.com/downloads/Codebug.dmg'
  name 'Codebug'
  homepage 'http://www.codebugapp.com/'
  license :commercial

  app 'Codebug.app'
end
