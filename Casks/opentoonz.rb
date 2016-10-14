cask 'opentoonz' do
  version '1.0'
  sha256 '44832ff14a3c187371ccb7c5ec5825701a7d7a3da302f7a2baf2cf8ca779edb9'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom',
          checkpoint: '936a3d648605266c580b1896f6e54d6ad25e6eaa4be1120f465e0576a8ee435b'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: [
                       'io.gothub.opentoonz.bin',
                       'io.gothub.opentoonz.stuff',
                     ]
end
