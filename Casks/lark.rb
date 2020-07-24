cask 'lark' do
  version '3.28.1'
  sha256 'c3a322dac541c1da379465c8d90e5517b3400644cf389e3d031d589f1948e9b3'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  app 'Lark.app'
end
