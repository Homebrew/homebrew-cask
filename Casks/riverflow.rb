cask 'riverflow' do
  version '1.0.0'
  sha256 'b26f58eaa1abb58529a669aab6e9ad9d6a71780bf25a7c0a61d0684a3ebc4e93'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-ap-northeast-1.amazonaws.com/sparkle-appcasts/riverflow/riverflow-#{version}.zip"
  name 'Riverflow'
  homepage 'http://questbe.at/riverflow/'
  license :gratis

  app 'Riverflow.app'

  zap delete: [
                '~/Library/Application Support/jp.questbeat.Riverflow',
                '~/Library/Caches/jp.questbeat.Riverflow',
                '~/Library/Preferences/jp.questbeat.Riverflow.plist',
              ]
end
