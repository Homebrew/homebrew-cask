cask 'lark' do
  version '3.21.8'
  sha256 'bc77d3dabb0db074b9ec2430427eea3adc4cc0e7a9f6fe42bb4c964994a2d9ee'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
