cask :v1 => 'codebug' do
  version '0.9.4'
  sha256 '2a568b2eff8145823b552668d0b1caa75a98077afe7692ccb69ca030508c86b9'

  url "http://codebugapp.com/downloads/Codebug#{version.gsub('.','-')}.zip"
  appcast 'http://codebugapp.com/update.xml'
  name 'Codebug'
  homepage 'http://www.codebugapp.com/'
  license :commercial

  app 'Codebug.app'
end
