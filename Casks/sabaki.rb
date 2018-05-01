cask 'sabaki' do
  version '0.33.4'
  sha256 'f8266ce4c64bdc4f155ae6f529368528d76972aa86539466241d9b0baa15d710'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom',
          checkpoint: '8437de691c3ef2f4b886ca18ab6c8e7a66f2ca8a0e88ead9d753854a2e1b6180'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end
