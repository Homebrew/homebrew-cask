cask 'qutebrowser' do
  version '1.2.0'
  sha256 '784139af6375a84e1840b382c3cf8c8d24feac97e1aa4a8e5686ed4f4a97ecb6'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '9ea60a9c8969bda6a086850940157627dd559252b3a8d7feabf7493e504e74ce'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
