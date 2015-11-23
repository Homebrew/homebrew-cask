cask :v1 => 'firefox-ja' do
  version '42.0'
  sha256 'cee512792c6b412bc201cf5c8782962259624e5413609ca80d95f10907199c10'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/ja-JP-mac/Firefox%20#{version}.dmg"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/new/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox-ja.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox-ja',
                  '~/Library/Caches/Firefox-ja',
                 ]

  caveats <<-EOS.undent
  The Mac App Store version of 1Password won't work with a Homebrew-cask-linked Mozilla Firefox. To bypass this limitation, you need to either:
    + Move Mozilla Firefox to your /Applications directory (the app itself, not a symlink).
    + Install 1Password from outside the Mac App Store (licenses should transfer automatically, but you should contact AgileBits about it).
  EOS
end
