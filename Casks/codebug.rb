cask 'codebug' do
  version '1.5.1'
  sha256 '31e6c99c95bbc2d146ce96aaecf38743f9ab83195483192a90b9da03732b765f'

  url "http://codebugapp.com/downloads/Codebug#{version}.zip"
  appcast 'http://codebugapp.com/updateV1.xml',
          checkpoint: '81f2e43713dfca05e22a81da84011b2264cf09ec8453e3cc601bff8f103fe8b9'
  name 'Codebug'
  homepage 'http://www.codebugapp.com/'
  license :commercial

  app 'Codebug.app'
end
