cask 'betwixt' do
  version '1.6.1'
  sha256 'a97f893e8bc7611dfde66ae75775a829c4d25959b946276aacf32cc8485c4054'

  url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-darwin-x64.zip"
  appcast 'https://github.com/kdzwinel/betwixt/releases.atom',
          checkpoint: 'cea22ba54350c69a99f4d0a46003c588475741b598bac92ecb92838bd7742c4d'
  name 'Betwixt'
  homepage 'https://github.com/kdzwinel/betwixt'

  app 'Betwixt-darwin-x64/Betwixt.app'

  zap trash: [
               '~/Library/Application Support/betwixt',
               '~/Library/Caches/betwixt',
             ]
end
