cask 'copyclip-helper' do
  version :latest
  sha256 :no_check

  url 'https://fiplab.com/helpers/CopyClip-2-Helper.zip'
  name 'CopyClip Helper'
  homepage 'https://fiplab.com/apps/copyclip-helper'

  depends_on cask: 'copyclip'

  app 'CopyClip 2 Helper.app'
end
