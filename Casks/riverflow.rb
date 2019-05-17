cask 'riverflow' do
  version '1.0.0'
  sha256 'b26f58eaa1abb58529a669aab6e9ad9d6a71780bf25a7c0a61d0684a3ebc4e93'

  # amazonaws.com/sparkle-appcasts/riverflow was verified as official when first introduced to the cask
  url "https://s3-ap-northeast-1.amazonaws.com/sparkle-appcasts/riverflow/riverflow-#{version}.zip"
  appcast 'https://questbe.at/riverflow/'
  name 'Riverflow'
  homepage 'https://questbe.at/riverflow/'

  app 'Riverflow.app'

  zap trash: [
               '~/Library/Application Support/jp.questbeat.Riverflow',
               '~/Library/Caches/jp.questbeat.Riverflow',
               '~/Library/Preferences/jp.questbeat.Riverflow.plist',
             ]
end
