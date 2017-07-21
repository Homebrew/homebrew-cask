cask 'letterfix' do
  version '2.6.0a,67971'
  sha256 '2b79a0d8a0e568370e805fa31000d9dc5368beb9234f4efd219f4bcf7b5c3356'

  url "http://onet.dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://ja.osdn.net/projects/letter-fix/releases/rss',
          checkpoint: '86f0af684a642763639da8a1408f4de61a9eded441eb8f1b4abe689a8c0edd4a'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version.before_comma}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
