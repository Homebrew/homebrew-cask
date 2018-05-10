cask 'outline-manager' do
  version '1.0.7'
  sha256 '476d3a5993b391b0275179348d8aea42fe5ece018f46373e227d1d82fc360579'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom',
          checkpoint: '4e12abc95ae29c1f9dd46a7aaecd2109f990e0249f1ba70b8021b4d769f19043'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
