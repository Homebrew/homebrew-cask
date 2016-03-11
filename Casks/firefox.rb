cask 'firefox' do
  version '45.0.0'
  sha256 '2eb674c00e35357dcb18a5642f19422cf086e72d42562346ae48aa1e3f29802a'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version.major_minor}/mac/en-US/Firefox%20#{version.major_minor}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'c82e11d0ac89e159a538cb614d4ae90e9232e9f761910222c92c3fa8938dcfbe'
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
