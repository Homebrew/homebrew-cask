cask 'icons' do
  version '1.1'
  sha256 'aff6836c0425c845afbc4d71579ebd8adf4d161f03413939ee8579b23782159a'

  url "https://github.com/exherb/icons/releases/download/#{version}/icons-v#{version}-macos-x64.zip"
  appcast 'https://github.com/exherb/icons/releases.atom',
          checkpoint: 'd3d15bf97bb0434698713d65b0b5fcb3919411c932a580d9d0974e8544408b58'
  name 'Icons'
  homepage 'https://github.com/exherb/icons'
  license :mit

  app 'Icons.app'
end
