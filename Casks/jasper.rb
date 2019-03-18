cask 'jasper' do
  version '0.7.1'
  sha256 '917169ba9ac331faa8116ddf2c8ca6323daa7cd5d2c9aec8e4568a83155de679'

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
