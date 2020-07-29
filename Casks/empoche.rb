cask 'empoche' do
  version '0.4.4'
  sha256 '49eec7f431548aa3848b88085c158f2d2191b712a23be1133498a2748c1718a8'

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
