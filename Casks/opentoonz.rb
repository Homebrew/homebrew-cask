cask 'opentoonz' do
  version '1.1.2'
  sha256 'd9cd6fb30111ca2e0b1f7051f37b342ecf3c43e4a7ac604255b95a684ecdb6ff'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom',
          checkpoint: 'f0ba39ba289549df0369e0c98d94caf6d6544b876993b918f80e735bc6674760'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: [
                       'io.gothub.opentoonz.bin',
                       'io.gothub.opentoonz.stuff',
                     ]
end
