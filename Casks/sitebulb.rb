cask 'sitebulb' do
  version '3.3.1'
  sha256 '3a6510e9e919951eff36b1c0414c533ddc8f445e7167bc9220ae1efcbec30940'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
