cask 'letterfix' do
  version '2.5.3,67423'
  sha256 'b6125a0f55ef0c52711403613473ba6fc396745f7d2ace88cc46f9d9df57b41d'

  url "http://dl.osdn.jp/letter-fix/#{version.after_comma}/LetterFix-#{version.before_comma}.dmg"
  appcast 'https://osdn.jp/projects/letter-fix/releases/rss',
          checkpoint: '8fa3a0fc1cb40fd5d73719f4e82c8857038afaa14b2d0bf2ef87649fbc46e116'
  name 'LetterFix'
  homepage 'https://osdn.jp/projects/letter-fix/'

  pkg "LetterFix-#{version.before_comma}.pkg"

  uninstall pkgutil: 'org.kuri.letterfix.LetterFix.pkg'
end
