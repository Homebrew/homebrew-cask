cask 'letterfix' do
  version '2.7.0.1,70082'
  sha256 '0eadd2aef702d9f940df8376d9a47101d4792fd59b083c6b53de0f93044e7048'

  url "https://rwthaachen.dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://ja.osdn.net/projects/letter-fix/releases/rss'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version.before_comma}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
