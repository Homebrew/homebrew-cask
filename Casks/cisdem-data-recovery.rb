cask 'cisdem-data-recovery' do
  version '6.1.0'
  sha256 '917c4eceedbce9b757e4504f66c740bd0b52fc4d1295a9878825d0595337f065'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
