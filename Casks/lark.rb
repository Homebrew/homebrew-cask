cask 'lark' do
  version '3.20.5'
  sha256 'f308204d59d154520760e239b0418407ab359fe6454648b80a368bad8f7d0971'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
