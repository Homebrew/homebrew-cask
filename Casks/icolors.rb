cask 'icolors' do
  version '3.0'
  sha256 '92fab479c7916ee7c52efcc457d8d120acc555a05825b01ebca047f017c097b9'

  url "https://www.fadingred.com/files/icolors/icolors_#{version}.zip"
  appcast 'http://www.fadingred.com/icolors/updates.xml',
          checkpoint: '753431d5bc996e38d4e83d77a7bbd11a3b93f4e2084a9261db6ad8d3bc6c6360'
  name 'iColors'
  homepage 'http://www.fadingred.com/icolors/'

  app 'iColors.app'
end
