cask 'letterfix' do
  version '2.5.3,67423'
  sha256 'b6125a0f55ef0c52711403613473ba6fc396745f7d2ace88cc46f9d9df57b41d'

  url "http://onet.dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://ja.osdn.net/projects/letter-fix/releases/rss',
          checkpoint: 'bdb6da9001b4a915f5059542ea8152bb4103fec4df47e028afbefce63d4e1b34'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version.before_comma}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
