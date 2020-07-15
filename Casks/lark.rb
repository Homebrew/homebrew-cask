cask 'lark' do
  version '3.26.5'
  sha256 '7cb0c213ff581058e8442905fa1377261e5ce4f3cba116b54ec365756216c909'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  app 'Lark.app'
end
