cask 'outline-manager' do
  version '1.1.1'
  sha256 'bb43a5d80f96f0ec28c48c8d648bb579e9c33ddaa7abf5986a13932ea51c476b'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom',
          checkpoint: '9855dda731018f9e60a8fb1b6e0b55f059d3ea593d12b7ceafe64b155cb6835d'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
