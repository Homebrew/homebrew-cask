cask 'bootchamp' do
  version :latest
  sha256 :no_check

  url 'https://www.kainjow.com/downloads/BootChamp.zip'
  appcast 'https://kainjow.com/updates/bootchamp.xml',
          :sha256 => 'b117cae73e7f24153c05549dab19cbd82013a410b5db89dbc6f9e36d5fd67f4f'
  name 'BootChamp'
  homepage 'https://www.kainjow.com/'
  license :oss

  app 'BootChamp.app'
end
