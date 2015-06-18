cask :v1 => 'icolors' do
  version '3.0'
  sha256 '92fab479c7916ee7c52efcc457d8d120acc555a05825b01ebca047f017c097b9'

  url "https://www.fadingred.com/files/icolors/icolors_#{version}.zip"
  name 'iColors'
  appcast 'http://www.fadingred.com/icolors/updates.xml',
          :sha256 => 'fa4f6c175627a5cb3fac7a8c44752fb288dbfa13ed72ae6fe06a2b89d01c97d8'
  homepage 'http://www.fadingred.com/icolors/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iColors.app'
end
