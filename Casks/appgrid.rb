cask 'appgrid' do
  version '1.0.4'
  sha256 'e89280465b4a3dc580b026f25f2ade04ab1cd9b15a476e327110a1d91bd7da77'

  url "https://github.com/sdegutis/AppGrid/releases/download/#{version}/AppGrid-#{version}.zip"
  appcast 'https://github.com/sdegutis/AppGrid/releases.atom',
          checkpoint: '16074ddd44ba518efb255a3808340acf76940cc08342933cf6b026dd9242644a'
  name 'AppGrid'
  homepage 'https://github.com/sdegutis/AppGrid'

  app 'AppGrid.app'

  uninstall login_item: 'AppGrid',
            quit:       'com.sdegutis.AppGrid'

  zap trash: '~/Library/Preferences/com.sdegutis.AppGrid.plist'
end
