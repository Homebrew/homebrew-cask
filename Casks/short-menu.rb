cask 'short-menu' do
  version '3.0.5,594:1538255759'
  sha256 '3a0fd82c6370708f640908f6dfe8f7ed2d82b7fd6352b0fbd8f5db2290f08a9e'

  # dl.devmate.com/com.floschliep.Short-Menu was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.floschliep.Short-Menu/#{version.after_comma.before_colon}/#{version.after_colon}/ShortMenu-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.floschliep.Short-Menu.xml'
  name 'Short Menu'
  homepage 'https://appiculous.com/short-menu-mac/'

  app 'Short Menu.app'

  zap trash: [
               '~/Library/Application Support/Short Menu',
               '~/Library/Containers/com.floschliep.Short-Menu',
               '~/Library/Logs/com.floschliep.Short-Menu',
               '~/Library/Cookies/com.floschliep.Short-Menu.binarycookies',
             ]
end
