cask 'copyclip-helper' do
  version '2'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://fiplab.com/helpers/CopyClip-#{version}-Helper.zip"
  name 'CopyClip Helper'
  homepage 'https://fiplab.com/apps/copyclip-helper'

  depends_on cask: 'copyclip'

  app "CopyClip #{version} Helper.app"
end
