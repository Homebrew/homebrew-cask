cask 'activedock' do
  version '1.50'
  sha256 '6412f060ea920e73c2c27047bf6025cd25bc9d22473246b8ebf739cb507f6bd5'

  # s3.amazonaws.com/downloads.macplussoftware was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads.macplussoftware/ActiveDock.zip'
  appcast 'https://s3.amazonaws.com/downloads.macplussoftware/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
