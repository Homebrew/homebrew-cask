cask 'qutebrowser' do
  version '1.3.0'
  sha256 '5d094e767f79835d49704bb7cf331db56998fe4b5b26e0669d7106274cc3f199'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '43763a553e7ff2effec30eb8a4155d68dc4bb5e918c64da2cb84bac9b808ac07'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
