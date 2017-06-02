cask 'betwixt' do
  version '1.6.1'
  sha256 'a97f893e8bc7611dfde66ae75775a829c4d25959b946276aacf32cc8485c4054'

  url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-darwin-x64.zip"
  appcast 'https://github.com/kdzwinel/betwixt/releases.atom',
          checkpoint: 'a6c22caa32dc8c0cb85b7f1ad816e5e471f7dda4b81b31f94ba1b882d16bd641'
  name 'Betwixt'
  homepage 'https://github.com/kdzwinel/betwixt'

  app 'Betwixt-darwin-x64/Betwixt.app'

  zap delete: [
                '~/Library/Application Support/betwixt',
                '~/Library/Caches/betwixt',
              ]
end
