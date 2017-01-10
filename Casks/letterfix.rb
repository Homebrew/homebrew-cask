cask 'letterfix' do
  version '2.5.2,66866'
  sha256 'd67d29760cb0cdc417d352ee029756cbec1f2cd7a37e262c67591c948a04cab8'

  url "http://dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://osdn.jp/projects/letter-fix/releases/rss',
          checkpoint: '2ee4d7d79be2178ed1e5f66bbe4bdfda5e5173d918bd7a545a9adf8c15844084'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version.before_comma}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
