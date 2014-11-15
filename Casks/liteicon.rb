cask :v1 => 'liteicon' do
  version '3.5.3'
  sha256 '73f1e5c6fe0bb9ad08004234d4a0b245fd6698f1623c7485080ae0a2ae7cf299'

  url "http://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'http://www.freemacsoft.net/liteicon/updates.xml',
          :sha256 => '410b87eda513bf954ce3c4ae7258b3ca02d10557e92f8cbf04a8df37757dc560'
  homepage 'http://www.freemacsoft.net/liteicon/'
  license :unknown

  app 'LiteIcon.app'
end
