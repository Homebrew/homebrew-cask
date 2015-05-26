cask :v1 => 'adapter' do
  version '2.1.4'
  sha256 '7f4db4e89fcf1d7be692c5b74b02f4c22206396a0febd51f42a46262ff9d4927'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  name 'Adapter'
  appcast 'http://www.macroplant.com/adapter/adapterAppcast.xml',
          :sha256 => '728eef4268dd42ac46c3c4dbb7192e3766f310900671d6466adf777dd0980e7e'
  homepage 'http://www.macroplant.com/adapter/'
  license :gratis

  app 'Adapter.app'
end
