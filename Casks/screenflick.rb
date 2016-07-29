cask 'screenflick' do
  version '2.7.16'
  sha256 'a4427c3309fb2f6d0e1a5df6a33f25688f720a5c0f3c17ecb2e13042266b9840'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '9ca8036c85ff7c3096e27daeeb2b6e4e94be8cc39f84685a7373cf4f39b51cb8'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
