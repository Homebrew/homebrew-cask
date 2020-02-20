cask 'react-studio' do
  version '1.7.9,372'
  sha256 'fdbda36703ea770a24a0ecfa9b799ca41cf6ebb5efde23221a78faecab6740fb'

  # s3.amazonaws.com/sc.neonto.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.before_comma.no_dots}_build#{version.after_comma}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/send_post_request.cgi?url=https://reactstudio.com/api/download/reactstudio',
          configuration: version.before_comma.no_dots
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
