cask 'activedock' do
  version '1.53'
  sha256 'd37db887147f9027278ee030406d5a00e72f5cb3acae390ee51f4d695911e265'

  # s3.amazonaws.com/downloads.macplussoftware was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads.macplussoftware/ActiveDock.zip'
  appcast 'https://s3.amazonaws.com/downloads.macplussoftware/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
