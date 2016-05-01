cask 'codekit' do
  version '2.8-19120'
  sha256 '1242fc38d2bcf37a64bb7e5cbf5828d3519302ab80c20f2babcbe7d69751317c'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          checkpoint: 'b839ca625b153b6328951d691d05933d118fe86eefbe998f70e8851d45a0ed2c'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  auto_updates true

  app 'CodeKit.app'
end
