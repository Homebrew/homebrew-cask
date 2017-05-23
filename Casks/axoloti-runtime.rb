cask 'axoloti-runtime' do
  version '1.0.12-1'
  sha256 '433c965b0814f4e01cd8d5d827ba18ea5bda6b6dd798ac8f6f6f29d0b0c9e77d'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axo_runtime_mac_#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: 'af66fae3e4388e6f6654ca48a693147c94fa537aa78bac545af9c8bb7b919d2d'
  name 'Axoloti Runtime'
  homepage 'http://www.axoloti.com/'

  suite 'axoloti_runtime'

  caveats do
    depends_on_java('8')
  end
end
