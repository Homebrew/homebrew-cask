cask :v1 => 'cakebrew' do
  version '1.1.3'
  sha256 '5061af3f82dab82fe9c50250cd670743aa2401ec97658361ff509a9418e30edd'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => '6f332be542626eaf275dd7a58d473772c9e954615b5d669a183ef5485b54463e'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
