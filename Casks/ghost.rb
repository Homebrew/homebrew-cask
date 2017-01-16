cask 'ghost' do
  version '1.2.0'
  sha256 '2e9d57547bf752e712e3841599d3fbf4da719be3da2c86b634cca41a09ad4152'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: 'df01bceb05c2edcac6fba1947aad9575f0d84704bde2ae5c7444209a89a15e55'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
