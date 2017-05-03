cask 'sabaki' do
  version '0.30.2'
  sha256 'c1b60321be7c61bbf284ca26f2881b5cd01f1aff04f873342ce58ec9995d8463'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '7e5f458307e6a0c109c716422349b50c59d527f4fe7564cf25358bad0d039f60'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
