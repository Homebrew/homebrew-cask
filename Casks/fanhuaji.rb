cask 'fanhuaji' do
  version '1.6.0'
  sha256 '545dcb9a9c9bee34c694e556d87254d5eac3c9c5e43b11748b0fb92cd43037dc'

  # github.com/James1201/Fanhuaji-GUI-Release was verified as official when first introduced to the cask
  url "https://github.com/James1201/Fanhuaji-GUI-Release/releases/download/#{version}/Fanhuaji-#{version}-macx-amd64.zip"
  appcast 'https://github.com/James1201/Fanhuaji-GUI-Release//releases.atom'
  name 'Fanhuaji'
  homepage 'https://zhconvert.org/'

  app 'Fanhuaji.app'

  zap trash: [
               '~/Library/Preferences/com.yourcompany.Fanhuaji.plist',
               '~/Library/Saved Application State/com.yourcompany.Fanhuaji.savedState',
               '/private/var/folders/*/*/C/com.yourcompany.Fanhuaji',
             ]
end
