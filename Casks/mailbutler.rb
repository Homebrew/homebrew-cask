cask 'mailbutler' do
  version '6646'
  sha256 'f1ba4d4e2a9aaf2ec7a7b960500033cc6e988b2b75a03630a8a9905e62e6ed63'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '76984a318c0a8ecf421d5c30e45df25c0fba1e82859b6a38c09513d31481570e'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end
