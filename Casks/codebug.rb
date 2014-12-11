cask :v1 => 'codebug' do
  version :latest
  sha256 :no_check

  url 'http://codebugapp.com/downloads/Codebug.dmg'
  appcast 'http://codebugapp.com/update.xml'
  homepage 'http://www.codebugapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Codebug.app'
end
