cask 'sitebulb' do
  version '3.7'
  sha256 'd1c8053fd8d92b0e8ce37c2da6edaaf72adec82266874bfd9b4491bff5f7d4f9'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
