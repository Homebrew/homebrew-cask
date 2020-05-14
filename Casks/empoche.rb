cask 'empoche' do
  version '0.3.2'
  sha256 'ff49288a14b0676d168607356811beddd4a5cb259c3356d38baf7476e92efa34'

  # empoche-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://empoche-desktop.s3.amazonaws.com/Empoche-#{version}-mac.zip"
  appcast 'https://empoche-desktop.s3.amazonaws.com/latest-mac.yml'
  name 'Empoche'
  homepage 'https://empoche.com/'

  app 'Empoche.app'

  zap trash: [
               '~/Library/Application Support/empoche',
               '~/Library/Saved Application State/com.empoche.app.savedState',
               '~/Library/Preferences/com.empoche.app.plist',
             ]
end
