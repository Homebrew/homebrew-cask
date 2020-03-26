cask 'lark' do
  version '3.20.6'
  sha256 '232d1d19b1687cedf47f19b297494a47c43c347fb0229e65d69a9f5a45542221'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
