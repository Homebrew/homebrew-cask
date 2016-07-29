cask 'otomatic' do
  version '1.0.8.159'
  sha256 '77553e3e947e763126f8fa3fb0f01560a9e4d3da40a8360e49beecfde59f39d3'

  url "http://otomatic.codingcurious.com/update/archive/Otomatic.#{version}.zip"
  appcast 'http://otomatic.codingcurious.com/update/appcast.xml',
          checkpoint: '3979572ccbd9a410eb490a00d0e6acd3630e6a9b51c7f871d23f64cb788fb892'
  name 'Otomatic'
  homepage 'http://codingcurious.com/otomatic/'
  license :commercial

  auto_updates true

  app 'Otomatic.app'

  zap delete: [
                '~/Library/Application\ Support/Otomatic',
                '~/Library/Application\ Support/Otomatic\ Helper',
                '~/Library/Caches/com.codingcurious.Otomatic',
                '~/Library/Logs/Otomatic\ Helper',
                '~/Library/Preferences/com.codingcurious.Otomatic.plist',
                '~/Library/Preferences/com.codingcurious.Otomatic-Helper.plist',
              ]
end
