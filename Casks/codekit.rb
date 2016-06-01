cask 'codekit' do
  version '2.8-19127'
  sha256 '0f7665ac2e750437c83c2f4f887c0e5df5b5e3d1a8a1a4ae255321f16beddf28'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          checkpoint: 'cfb61004b168fa9ca62a66b46c68e42f6a23b3f20b66effa1a0a5446f7240f8d'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  auto_updates true

  app 'CodeKit.app'
end
