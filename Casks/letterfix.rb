cask 'letterfix' do
  version '2.6.0,68346'
  sha256 '89de44a2b0e6cb43915d9584615226811f939a42aed6d2a14ba099de18db2768'

  url "http://onet.dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://ja.osdn.net/projects/letter-fix/releases/rss'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version.before_comma}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
