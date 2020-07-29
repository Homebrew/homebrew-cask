cask 'lark' do
  version '3.24.9'
  sha256 'd60c50596a05d791fa5c212d0905a9ca5f50db4d6917323b3bb28881f86512a6'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  app 'Lark.app'
end
