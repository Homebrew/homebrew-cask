cask 'hive' do
  version '1.5'
  sha256 'fce5783488c9781df85185f2707dc4aa14b344d75d19b525bc41bafeaf976901'

  # github.com/hivewallet/hive-mac was verified as official when first introduced to the cask
  url "https://github.com/hivewallet/hive-mac/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://github.com/hivewallet/hive-mac/releases.atom',
          checkpoint: '910983133c5e81dbb151627938adc2cfef7e0a53d7c72609499b035e9f482ca5'
  name 'Hive'
  homepage 'https://mac.hivewallet.com'

  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
