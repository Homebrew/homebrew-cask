cask 'axoloti-runtime' do
  version '1.0.11'
  sha256 'b8c844c8668b0063ba177b7d87cfa278d288d8ea38a140f182a634ee2256ad0e'

  # github.com/axoloti/axoloti was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axo_runtime_mac_#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: 'b3e7756ec71f418f0a034460136fff898dcd539ff5f44b8a14c13401355eb515'
  name 'Axoloti Runtime'
  homepage 'http://www.axoloti.com/'

  suite 'axoloti_runtime'

  caveats do
    depends_on_java('8')
  end
end
