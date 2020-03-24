cask 'sitebulb' do
  version '3.5'
  sha256 'f5812c1df4bf6b5186421a4bdf9ca9e4b2ee2618de70ba6a502c786282d9b842'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
