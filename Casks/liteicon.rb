cask :v1 => 'liteicon' do
  version '3.5.4'
  sha256 '61062d4a4d771eb31617c3caba50f22254ac0d31709909ee1f4ca5f3aaf3a7db'

  url "http://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'http://www.freemacsoft.net/liteicon/updates.xml',
          :sha256 => '410b87eda513bf954ce3c4ae7258b3ca02d10557e92f8cbf04a8df37757dc560'
  homepage 'http://www.freemacsoft.net/liteicon/'
  license :unknown    # todo: improve this machine-generated value

  app 'LiteIcon.app'
end
