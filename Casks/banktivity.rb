cask 'banktivity' do
  version '7.5'
  sha256 '7595e63628dcb7605499cf1c6200d05470d5c676f395413b44c4c0ea29c6f185'

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version.major}_Web.dmg"
  appcast 'https://www.iggsoftware.com/product-versions.json'
  name 'Banktivity'
  homepage 'https://www.iggsoftware.com/banktivity/'

  depends_on macos: '>= :high_sierra'

  app "Banktivity #{version.major}.app"
end
