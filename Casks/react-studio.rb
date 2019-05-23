cask 'react-studio' do
  version '1.6.0,355'
  sha256 '42c7a0bead5b12e8ac2ade56a5e18413cebff20f798672dcf5ef159c4671bf6d'

  # s3.amazonaws.com/sc.neonto.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.before_comma.no_dots}_build#{version.after_comma}.zip"
  name 'ReactStudio'
  homepage 'https://reactstudio.com/'

  app 'React Studio.app'

  zap trash: [
               '~/Documents/React Studio',
               '~/Library/Application Support/React Studio',
               '~/Library/Caches/com.neonto.ReactStudio',
               '~/Library/Cookies/com.neonto.ReactStudio.binarycookies',
               '~/Library/Preferences/com.neonto.ReactStudio.plist',
               '~/Library/Preferences/com.neonto.ReactStudio.plist.*',
               '~/Library/Saved Application State/com.neonto.ReactStudio.savedState',
             ]
end
