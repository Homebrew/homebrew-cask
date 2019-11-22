cask 'cisdem-data-recovery' do
  version '6.0.0'
  sha256 '6e43692c0533b14591d60de527b7f6432a8bad0e861318b38f89b9a264232427'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
