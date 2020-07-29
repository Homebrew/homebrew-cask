cask 'lark' do
  version '3.26.3'
  sha256 '5ab53943f6ef96c1a38f4f7da59f80d4f2f43f6a4cc8a3803ed543e0ff8c5019'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Lark-#{version}.dmg"
  appcast 'https://www.larksuite.com/api/downloads'
  name 'Lark'
  homepage 'https://www.larksuite.com/'

  app 'Lark.app'
end
