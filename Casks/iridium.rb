cask 'iridium' do
  version '61.0.0'
  sha256 '1fcd109ceda9674e0627f48f97bbb54a4abd8918cdcb8435e0ea1913a8dba038'

  url "https://downloads.iridiumbrowser.de/macosx/#{version}/iridium_browser_#{version}_osx_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macosx/',
          checkpoint: '79e5b67739fa063b09bc512e0621114a7544ee46e76bc49875fcd94f049823a1'
  name 'Iridium Browser'
  homepage 'https://iridiumbrowser.de/'

  app 'Iridium.app'

  zap trash: [
               '~/Library/Preferences/de.iridiumbrowser.plist',
               '~/Library/Caches/de.iridiumbrowser',
               '~/Library/Application Support/Iridium',
               '~/Library/Saved Application State/de.iridiumbrowser.savedState',
             ]
end
