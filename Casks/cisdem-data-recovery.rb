cask 'cisdem-data-recovery' do
  version '6.1.0'
  sha256 '035207b4082ee08d42c81b71c12ee07a33b925d84d7773558697e3f7ef3151e7'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
