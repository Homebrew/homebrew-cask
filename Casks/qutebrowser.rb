cask 'qutebrowser' do
  version '1.0.4'
  sha256 '7349a4e7c331656faf6cae2b240a16fddf965cb27a981a45d583a2c3d83afe7b'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '56986898170af5133b6e55da57de50de216c229a187accdd940e46d8a26c0ea3'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
