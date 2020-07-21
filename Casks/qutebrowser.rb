cask 'qutebrowser' do
  version '1.13.1'
  sha256 '0ed56a49d3ae661e6d5ef6007bdf86e7e3b6cb69bed9b11538d824a46f09b535'

  # github.com/qutebrowser/qutebrowser/ was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
