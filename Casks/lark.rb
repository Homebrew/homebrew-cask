cask 'lark' do
  version '3.24.10'
  sha256 '20b8666ccd0b4de06cdf1c883893a836cee6b3a0ef99d714c7e31e8b6d81a109'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  app 'Lark.app'
end
