cask 'ghost' do
  version '0.4.0'
  sha256 '787575d11d10ef7221aa98eca641309e99f7f764fcee5d5caf51c0676f8d994f'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.zip"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: 'e0239429496de27b9a841dd7676d869e6ad8783d991921a4d64ab5499a90d257'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads'
  license :mit

  app "#{version}/Ghost.app"
end
