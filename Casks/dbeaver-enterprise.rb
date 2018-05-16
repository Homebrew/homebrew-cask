cask 'dbeaver-enterprise' do
  version '5.0.1'
  sha256 '6237fbe67a3be49094f8eaac561c4cfabee8003f1db512265df9f3d9f2983218'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml',
          checkpoint: '1de8c55c040e04051a175cc892724b65095cf3379ed05f1f32c2a63430370867'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
