cask 'icolors' do
  version '3.0'
  sha256 '92fab479c7916ee7c52efcc457d8d120acc555a05825b01ebca047f017c097b9'

  url "https://www.fadingred.com/files/icolors/icolors_#{version}.zip"
  appcast 'http://www.fadingred.com/icolors/updates.xml',
          :sha256 => '7facd161ae0a1d5986866ba8bc7d6911b6af98659841634e30b64b3b80dfb602'
  name 'iColors'
  homepage 'http://www.fadingred.com/icolors/'
  license :gratis

  app 'iColors.app'
end
