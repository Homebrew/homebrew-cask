cask 'opentoonz' do
  version '1.1.2'
  sha256 'd9cd6fb30111ca2e0b1f7051f37b342ecf3c43e4a7ac604255b95a684ecdb6ff'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom',
          checkpoint: '1ecb98405f74aaf87515ad97c2352f904b677f55e87c6581a6d37564ae111ee9'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: [
                       'io.gothub.opentoonz.bin',
                       'io.gothub.opentoonz.stuff',
                     ]
end
