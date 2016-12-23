cask 'letterfix' do
  version '2.5.1,66616'
  sha256 '8baf373a4d7f95f7112b79bf46b6e4d859c1e9f59f0dd39d77c619840413aad5'

  url "http://dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://osdn.jp/projects/letter-fix/releases/rss',
          checkpoint: '2572be16b41ee85378461d4a91e35f9796fdcfae4d9e4383782e47522dd3c1a9'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
