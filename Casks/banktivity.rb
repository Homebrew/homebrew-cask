cask 'banktivity' do
  version '7.5.1'
  sha256 '68728cfdb9b0b145cac19cbcabafc20166c564a2d91e3e0f4cb2200e1b22a73a'

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version.major}_Web.dmg"
  appcast 'https://www.iggsoftware.com/product-versions.json'
  name 'Banktivity'
  homepage 'https://www.iggsoftware.com/banktivity/'

  depends_on macos: '>= :high_sierra'

  app "Banktivity #{version.major}.app"
end
