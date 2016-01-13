cask 'codebug' do
  version '1.5.1'
  sha256 '31e6c99c95bbc2d146ce96aaecf38743f9ab83195483192a90b9da03732b765f'

  url "http://codebugapp.com/downloads/Codebug#{version}.zip"
  appcast 'http://codebugapp.com/updateV1.xml',
          :checkpoint => '06bfc8c5f723322981d338288630c4abd73676c10f48e803e561b6d153f18656'
  name 'Codebug'
  homepage 'http://www.codebugapp.com/'
  license :commercial

  app 'Codebug.app'
end
