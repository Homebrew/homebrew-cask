cask 'outline-manager' do
  version '1.0.7'
  sha256 '476d3a5993b391b0275179348d8aea42fe5ece018f46373e227d1d82fc360579'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom',
          checkpoint: 'a0b7f418fea518581cab1c8de9f221d2a233dc3939a0706d8a0b265ae7ad0093'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
