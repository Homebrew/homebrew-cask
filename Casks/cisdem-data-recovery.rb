cask 'cisdem-data-recovery' do
  version '6.3.0'
  sha256 'f0c23ab96eaa3f4d99fe21b426c3489bc571a1de8c350a9ea4fbc022cc3a6306'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
