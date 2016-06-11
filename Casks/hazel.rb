cask 'hazel' do
  version '4.0.2'
  sha256 '347bd3c4cb12c584ed43da0d8299c1e1cb6b6d25467298c72fac95173a93e878'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/release_notes',
          checkpoint: '533c0d885fde8490aa9452f344ee16fe854f09ab3ff1b708f08ef1ac88671179'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
