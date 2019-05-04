cask 'cisdem-data-recovery' do
  version '5.6.0'
  sha256 'e7d586ed2e52cb77974952f4f3608bf10fd4bfad46d7bd3e251a394e9b8b89bb'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
