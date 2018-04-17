cask 'axoloti-runtime' do
  version '1.0.12-1'
  sha256 '433c965b0814f4e01cd8d5d827ba18ea5bda6b6dd798ac8f6f6f29d0b0c9e77d'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axo_runtime_mac_#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: '613310bd8871468b0f4446a6ef121c96131bc42434a1e1765112fefc5db3b27d'
  name 'Axoloti Runtime'
  homepage 'http://www.axoloti.com/'

  suite 'axoloti_runtime'

  caveats do
    depends_on_java('8')
  end
end
