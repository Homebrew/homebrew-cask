cask 'banktivity' do
  version '6'
  sha256 :no_check # required as upstream package is updated in-place

  # iggsoft.com was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version}_Web.dmg"
  name 'Banktivity'
  homepage 'https://www.iggsoftware.com/banktivity/'

  app "Banktivity #{version}.app"
end
