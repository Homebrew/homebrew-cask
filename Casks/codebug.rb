cask 'codebug' do
  version '1.5.1'
  sha256 '31e6c99c95bbc2d146ce96aaecf38743f9ab83195483192a90b9da03732b765f'

  url "http://codebugapp.com/downloads/Codebug#{version}.zip"
  appcast 'http://codebugapp.com/updateV1.xml',
          :sha256 => 'b7e35ecf3c846faf2015234aeb4327c9b9211699e680918d8957a5a33f53e148'
  name 'Codebug'
  homepage 'http://www.codebugapp.com/'
  license :commercial

  app 'Codebug.app'
end
