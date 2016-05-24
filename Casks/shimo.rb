cask 'shimo' do
  version '4.1_8209'
  sha256 '6b2183851540a31fcbf9c887c90195ed08eaa2ed76d23a5cfd8294d8f2499dd8'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'
  license :commercial

  auto_updates true

  app 'Shimo.app'
end
