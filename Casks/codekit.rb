cask 'codekit' do
  version '2.7.1-19115'
  sha256 '67dcf28c247311710eef252f8c2a035fbaa3e964046bd6756d4d89ec7654f182'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          checkpoint: '5169ca1e43e720ea9da655f7c2027a6a3ab5ad7978ae8d2e7c16aed12030d874'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  auto_updates true

  app 'CodeKit.app'
end
