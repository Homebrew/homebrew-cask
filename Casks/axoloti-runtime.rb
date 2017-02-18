cask 'axoloti-runtime' do
  version '1.0.12'
  sha256 '5b3b484692a0afaca4663aee9456ed4836b1662881d0118c42e122cd1039bff8'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axo_runtime_mac_#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: '7e8428f250a591ed812f1f6cba4e91727230eff0d3aaab07c455f7a4c0245677'
  name 'Axoloti Runtime'
  homepage 'http://www.axoloti.com/'

  suite 'axoloti_runtime'

  caveats do
    depends_on_java('8')
  end
end
