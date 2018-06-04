cask 'sabaki' do
  version '0.34.1'
  sha256 'a392ceaf1e2f46254718a35e744c479b594e07c45532c597b776e7226ba88432'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom',
          checkpoint: '68733f0b317d7c1b6ed135664cc7df5a7471641a833e700ec0ab580a9698c196'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
