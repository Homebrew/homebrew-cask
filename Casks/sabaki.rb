cask 'sabaki' do
  version '0.33.3'
  sha256 '4d6edad6c772bb4a58b9f1bf652f228c0df5d19f69dc0f2a46b35203c40efb3d'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: 'b601399f75065337978b026b57d39a2e91e1a91aa0108c85252ffeb3cf081308'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
