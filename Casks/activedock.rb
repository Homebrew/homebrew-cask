cask 'activedock' do
  version '1.51'
  sha256 'd5d867915d7ef3274d7ce2dc797a79a5642b4b95583bd90af8f24c7e11307f28'

  # s3.amazonaws.com/downloads.macplussoftware was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads.macplussoftware/ActiveDock.zip'
  appcast 'https://s3.amazonaws.com/downloads.macplussoftware/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
