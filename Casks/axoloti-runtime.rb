cask 'axoloti-runtime' do
  version '1.0.12-1'
  sha256 '433c965b0814f4e01cd8d5d827ba18ea5bda6b6dd798ac8f6f6f29d0b0c9e77d'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axo_runtime_mac_#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: 'b5ac28c3d438cb88140ef924d860a46cd73ca19f474ddcfb403c41c26030d538'
  name 'Axoloti Runtime'
  homepage 'http://www.axoloti.com/'

  suite 'axoloti_runtime'

  caveats do
    depends_on_java('8')
  end
end
