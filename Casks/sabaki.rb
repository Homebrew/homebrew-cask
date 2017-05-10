cask 'sabaki' do
  version '0.30.3'
  sha256 'd53b8cb59f3771c365d50abae6651fb716d4174b78452a9f44dd9e87a20b4e1a'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '853c9c84e880c77a60ce53bc8c661473c3fee9dae2137d9ee86460f0c47c703d'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
