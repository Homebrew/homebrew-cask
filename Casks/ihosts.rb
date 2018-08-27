cask 'ihosts' do
  version '1.2.5'
  sha256 '0633be9da8210a87bbb57df9425d8b7ddc16de88387d6030f447286231ff1234'

  url "https://github.com/toolinbox/iHosts/raw/master/release/iHosts_v#{version}.zip"
  name 'iHosts'
  homepage 'https://github.com/toolinbox/iHosts'

  app 'iHosts.app'

  uninstall quit: 'net.toolinbox.ihosts'

  zap trash: [
               '~/Library/Application Scripts/net.toolinbox.ihosts',
               '~/Library/Application Scripts/net.toolinbox.ihostsHelper',
               '~/Library/Containers/net.toolinbox.ihosts',
               '~/Library/Containers/net.toolinbox.ihostsHelper',
             ]
end
