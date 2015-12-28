cask 'base' do
  version '2.4.10'
  sha256 '1a23a8da1be9e9a681d57bb934ac1f2dc8ab569027ec357dbf9324d48fe4fded'

  url "http://files.menial.co.uk/base/base_#{version}.zip"
  appcast 'http://update.menial.co.uk/software/base/',
          :sha256 => 'ab17b436120eb4f90ab3e28212d51f5805cb022d55eef3b7fdde8453d6302bf0'
  name 'Menial Base'
  homepage 'http://menial.co.uk/base/'
  license :commercial

  app 'Base.app'
end
