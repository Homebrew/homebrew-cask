cask 'betwixt' do
  version '1.6.1'
  sha256 'a97f893e8bc7611dfde66ae75775a829c4d25959b946276aacf32cc8485c4054'

  url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-darwin-x64.zip"
  appcast 'https://github.com/kdzwinel/betwixt/releases.atom',
          checkpoint: 'aadc0f2daec367d8458d56f331b51ba89682ba2cb260b318faa73ad3d30e5f16'
  name 'Betwixt'
  homepage 'https://github.com/kdzwinel/betwixt'

  app 'Betwixt-darwin-x64/Betwixt.app'

  zap delete: [
                '~/Library/Application Support/betwixt',
                '~/Library/Caches/betwixt',
              ]
end
