cask 'mailbutler' do
  version '6476'
  sha256 'caf33e04484b49b82633caa348904e12b383da5521b4e6f67bc99fe202f1108a'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '28df436c619b0fd0056da7d6521c59acb102a2b141f0800e97317c3f75facc77'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'

  app 'MailButler.app'
end
