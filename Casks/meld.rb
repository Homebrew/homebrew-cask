cask 'meld' do
  version '3.19.2-r3,osx-12'
  sha256 'c92f6d306f0c77aeb87b3a113df15ac6098f81734b85fce04e9956898ebe9e55'

  # github.com/yousseb/meld was verified as official when first introduced to the cask
  url "https://github.com/yousseb/meld/releases/download/#{version.after_comma}/meldmerge.dmg"
  appcast 'https://github.com/yousseb/meld/releases.atom'
  name 'Meld for OSX'
  homepage 'https://yousseb.github.io/meld/'

  app 'Meld.app'
  binary "#{appdir}/Meld.app/Contents/MacOS/Meld", target: 'meld'

  zap trash: '~/Library/Preferences/org.gnome.meld.plist'
end
