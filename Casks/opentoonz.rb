cask 'opentoonz' do
  version '1.1.2'
  sha256 'd9cd6fb30111ca2e0b1f7051f37b342ecf3c43e4a7ac604255b95a684ecdb6ff'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom',
          checkpoint: 'c3a7ddeccf932c3a25ab0e8e72d8c49c0cca35d65b749adc2ade3655fde67870'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: [
                       'io.gothub.opentoonz.bin',
                       'io.gothub.opentoonz.stuff',
                     ]
end
