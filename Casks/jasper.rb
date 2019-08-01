cask 'jasper' do
  version '0.7.2'
  sha256 'b1b323e11a7ecae5e43165f21fb3fbe9ac0ade151c701fecfa0152d0cb1e5031'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://github.com/jasperapp/jasper/releases.atom'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap trash: [
               '~/Library/Application Support/jasper',
               '~/Library/Containers/io.jasperapp',
             ]
end
