cask 'firefox' do
  version '44.0.1'
  sha256 '74f7d4041f2582553a460fd8249575dfc501b57bdee37f43083e8d7277d2d722'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version.major_minor}/mac/en-US/Firefox%20#{version.major_minor}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '087fbe919aba0bcd6488427e8e3161095036a55fc1eb0b72b2ccb088f5405b76'
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
