cask 'jasper' do
  version '0.9.1'
  sha256 'fef8e9ce1fd036bca14579749d9aae57953b24f919fd16e219952a5597fe0851'

  # github.com/jasperapp/jasper/ was verified as official when first introduced to the cask
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
