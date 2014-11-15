cask :v1 => 'hive' do
  version '1.3.4'
  sha256 'bbf99210f9d359d1f75482abebd24eb7cb3103d437c47a0dbf107f4bf9dcd97b'

  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://hivewallet.com/hive-osx-appcast.xml',
          :sha256 => 'ab99fa8762d778ae379837c083214d70b3693b42cc8aa596d57a90b1d7e55c67'
  homepage 'http://www.hivewallet.com'
  license :oss

  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
