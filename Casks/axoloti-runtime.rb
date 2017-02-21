cask 'axoloti-runtime' do
  version '1.0.12-1'
  sha256 '433c965b0814f4e01cd8d5d827ba18ea5bda6b6dd798ac8f6f6f29d0b0c9e77d'

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
