cask 'letterfix' do
  version '2.4.3,64369'
  sha256 '89d2341683f3ace66ca0af14ac040bbe2da18eafe282c6ec29dc777f0aac33d4'

  url "http://dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://osdn.jp/projects/letter-fix/releases/rss',
          checkpoint: '1dac0e9046ba533558c08a414b9844454abfeadd96336d1392d706dcd3e3220d'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'
  license :mit

  pkg "LetterFix-#{version}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
