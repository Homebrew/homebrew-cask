cask 'lark' do
  version '3.21.5'
  sha256 '1d6eec8e627d791a8115cc32fd17d4dbd971895a6758ecd6a7fae6ffa3940c1f'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
