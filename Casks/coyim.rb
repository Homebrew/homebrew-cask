cask 'coyim' do
  version '0.1'
  sha256 'f7034d71ef81c116bbc59a784b65f835e1dac0276be02e83d7b2ed534551aceb'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  license :mit

  app 'CoyIM.app'
end
