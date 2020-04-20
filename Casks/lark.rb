cask 'lark' do
  version '3.22.3'
  sha256 '3c72b1b83267fb3945f07e1e7c2354595591756250f9c17b0e04267231045c39'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
