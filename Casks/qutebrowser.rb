cask 'qutebrowser' do
  version '0.11.1'
  sha256 'addb8c5502727057d3b3fc4fd8f117ea4fb22a49e6b9c56e9267c13e22568cf5'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: 'e52d748339f56300f711e59031880d1cecc156291830b384ce7e3d007b5000b0'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
