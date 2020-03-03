cask 'lark' do
  version '3.18.4'
  sha256 '28d5d19eabc3a85702dedb157dfa03ae0649aa913091f4272278b644d5390e93'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
