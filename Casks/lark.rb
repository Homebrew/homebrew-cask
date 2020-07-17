cask 'lark' do
  version '3.26.6'
  sha256 'f8fbc6e8497345a9382e210ffbf7600fc2ed99e147234e525fcc874d44087d7e'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  app 'Lark.app'
end
