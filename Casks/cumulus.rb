cask 'cumulus' do
  version '0.6.2'
  sha256 'bd87fc3c7d326117aad9ea80144437931ae28b8453cfdd4ca847e659b0591bf3'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: '098e4c66e2350cceb11c20f0b868549e24116ca6be8a4a9f50023dce7f30eec9'
  name 'Cumulus'
  homepage 'https://gillesdemey.github.io/Cumulus/'
  license :oss

  app 'Cumulus.app'

  zap delete: [
                '~/Library/Application Support/Cumulus',
                '~/Library/Caches/Cumulus',
                '~/Library/Preferences/com.gillesdemey.cumulus.plist',
                '~/Library/Saved Application State/com.gillesdemey.cumulus.savedState',
              ]
end
