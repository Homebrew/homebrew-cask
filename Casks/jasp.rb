cask 'jasp' do
  version '0.10.0.0'
  sha256 '7b676d12875b5c66a87410ebd77a1178b18fed1e0d73595d7f206077822d44ea'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end
