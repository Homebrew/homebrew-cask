cask :v1 => 'icolors' do
  version '3.0'
  sha256 '92fab479c7916ee7c52efcc457d8d120acc555a05825b01ebca047f017c097b9'

  url "https://www.fadingred.com/files/icolors/icolors_#{version}.zip"
  homepage 'http://www.fadingred.com/icolors/'
  license :unknown    # todo: improve this machine-generated value

  app 'iColors.app'
end
