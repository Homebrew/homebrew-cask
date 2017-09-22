cask 'sabaki' do
  version '0.31.3'
  sha256 '37e7e5384d2c405fb3fb64196a0e2dea37f9a33edce7b4ecc61126d48c287b6d'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: 'd061c56e4ce86fb56b81c536e9efe40e47cc6eeeb650c19d22583530062ee992'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
