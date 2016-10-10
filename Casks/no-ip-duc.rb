cask 'no-ip-duc' do
  version '3.2.1'
  sha256 'b59b159d1f9e2b64d6514577946b77f2c7f11767aa507a9c2bc2aa39ae9e4ffd'

  url "https://www.noip.com/client/mac/noip#{version}.dmg"
  name 'No-IP DUC'
  homepage 'https://www.noip.com/download?page=mac'

  app 'No-IP DUC.app'
end
