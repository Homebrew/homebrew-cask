cask 'firefox' do
  version '44.0'
  sha256 '74f7d4041f2582553a460fd8249575dfc501b57bdee37f43083e8d7277d2d722'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/en-US/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/en-US/firefox/releases/',
          checkpoint: '4a7b21fc652376f84ccc008bb33f7b59cd90aed812ee9c2eccf6c3e7a450601e'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  license :mpl

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]

  caveats <<-EOS.undent
  The Mac App Store version of 1Password won't work with a Homebrew-cask-linked Mozilla Firefox. To bypass this limitation, you need to either:
    + Move Mozilla Firefox to your /Applications directory (the app itself, not a symlink).
    + Install 1Password from outside the Mac App Store (licenses should transfer automatically, but you should contact AgileBits about it).
  EOS
end
