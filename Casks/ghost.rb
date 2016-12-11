cask 'ghost' do
  version '1.1.2'
  sha256 '189f01624faffc7b6a8280de34de4ee7bd3e6038a6d147de246b973e4f0cbb99'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: '31952a4c4a1bb87707b4629b853608a1ebba36ce2df889b7acaeb6079a3d0f9c'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  app 'Ghost.app'
end
