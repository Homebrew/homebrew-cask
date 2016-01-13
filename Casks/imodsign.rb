cask 'imodsign' do
  version :latest
  sha256 :no_check

  url 'https://imzdl.com/iModSign/iModSign.zip'
  appcast 'https://imzdl.com/iModSign/appcast.xml',
          :checkpoint => '910fc6ea29dfb5607c3edb1a0b131383593964be4b3115ede2ab52b8bec14da0'
  name 'iModSign'
  homepage 'https://imzdl.com'
  license :closed

  app 'iModSign.app'
end
