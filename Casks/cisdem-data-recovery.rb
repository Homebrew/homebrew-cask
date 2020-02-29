cask 'cisdem-data-recovery' do
  version '6.2.0'
  sha256 '988f2d31912656a9284ddc844c64d496001147054d46504b88526fc4853ea3f7'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
