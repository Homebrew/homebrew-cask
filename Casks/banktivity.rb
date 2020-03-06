cask 'banktivity' do
  version '7.4.2'
  sha256 '604fbeb5405108b6d37b17fc3055503cd03e3e0276c098d569b1f49ed5a84286'

  # iggsoft.com was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version.major}_Web.dmg"
  appcast 'https://www.iggsoftware.com/product-versions.json'
  name 'Banktivity'
  homepage 'https://www.iggsoftware.com/banktivity/'

  depends_on macos: '>= :high_sierra'

  app "Banktivity #{version}.app"
end
