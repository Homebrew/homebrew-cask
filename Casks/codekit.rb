cask 'codekit' do
  version '2.9.1-19142'
  sha256 '8df162690d69ebb3f8995f06cc3e435ea6c0df15ceb6fb5f4b52c8e1d647f532'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          checkpoint: 'd7f6c068fa4e310e604ed8c3a41a1d41dff5b97f4db9aa9b0d41fe0964b11d8c'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'

  auto_updates true

  app 'CodeKit.app'
end
