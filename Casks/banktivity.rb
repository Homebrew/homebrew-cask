cask 'banktivity' do
  version :latest
  sha256 :no_check

  # iggsoft.com was verified as official when first introduced to the cask
  url 'https://www.iggsoft.com/banktivity/Banktivity6_Web.dmg'
  name 'Banktivity'
  homepage 'https://www.iggsoftware.com/banktivity/'

  app 'Banktivity 6.app'
end
