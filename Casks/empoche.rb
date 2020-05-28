cask 'empoche' do
  version '0.4.0'
  sha256 '765e793fe3de5bbdc07c998c3e8596ba51bc106d4a1940f233ba3790d781bf7b'

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
