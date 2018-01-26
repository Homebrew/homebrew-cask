cask 'baseelements' do
  version '16'
  sha256 :no_check # required as upstream package is updated in-place

  # goya.com.au/files/becurrent was verified as official when first introduced to the cask
  url "https://goya.com.au/files/becurrent/BaseElements_#{version}_Mac_Runtime.dmg"
  name 'BaseElements'
  homepage 'http://www.baseelements.com/'

  suite 'BaseElements'
end
