cask 'mailbutler' do
  version '6763'
  sha256 '6a4cd033ba8244ddfa21adc62f34cc1a2df7b6f41ea96f4fbe3639cb67cb23c6'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '01f2e150cbb8e87528fdd339431d421f12d277be83e4b4f8a7fac8d6aa8dc3b4'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end
