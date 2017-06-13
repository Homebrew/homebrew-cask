cask 'opentoonz' do
  version '1.1.3'
  sha256 '84a820f66f03a360d8f3fda1218bd4d1166ff8d33d55e3c39a392398fd603abb'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom',
          checkpoint: 'cc268a98e0ca2496c3b04801c33c1c25908503d8fcc7264cfee658c578f16546'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: [
                       'io.gothub.opentoonz.bin',
                       'io.gothub.opentoonz.stuff',
                     ]
end
