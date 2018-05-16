cask 'axoloti-runtime' do
  version '1.0.12-2'
  sha256 '30e887a81caf1e7ea375c0e795294f6352a3dc7291ff092a8afbf6f7f61c6736'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axo_runtime_mac_#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: '448924453923cd34c05f2005ea556c447d609b96ef9ecb35d2038d450f2e1cea'
  name 'Axoloti Runtime'
  homepage 'http://www.axoloti.com/'

  suite 'axoloti_runtime'

  caveats do
    depends_on_java '8'
  end
end
