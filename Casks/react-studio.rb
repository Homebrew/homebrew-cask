cask 'react-studio' do
  version '1.7.7,369'
  sha256 'b63a091ebe0e3501c72eedb48357387576789284e16b4c57f854ecd3373aefee'

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
