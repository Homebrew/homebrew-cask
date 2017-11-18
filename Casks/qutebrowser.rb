cask 'qutebrowser' do
  version '1.0.3'
  sha256 '315a1db108f5ddc0a264d8a4e89b1e88cf528c089c03b445b4417efc4d63ae3f'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '36765055620918390d2ef6507087adea18f18ef0bdadd69213d077489a298a60'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
