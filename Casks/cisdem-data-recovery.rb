cask 'cisdem-data-recovery' do
  version '5.7.0'
  sha256 'cf9115653d16889874e393ed8ec3fce08e7b7098549baa2ad78ca77716bf7e5c'

  url 'http://download.cisdem.com/cisdem-datarecovery.dmg'
  appcast 'https://www.cisdem.com/data-recovery-mac/release-notes.html'
  name 'Cisdem Data Recovery'
  homepage 'https://www.cisdem.com/data-recovery-mac.html'

  depends_on macos: '>= :sierra'

  app 'Cisdem Data Recovery.app'
end
