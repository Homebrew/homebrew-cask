cask 'cumulus' do
  version '0.9.0'
  sha256 '810941b913de3347ebfff7b09feb0f51af5e5d4bd5b6919118bf475c92df4699'

  # github.com/gillesdemey/Cumulus was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}-osx.dmg"
  appcast 'https://github.com/gillesdemey/Cumulus/releases.atom',
          checkpoint: 'bbe1f106b1855928840d8b5414e2efce1ddbd7df896eaf2f75890b9bfc4ab093'
  name 'Cumulus'
  homepage 'https://gillesdemey.github.io/Cumulus/'

  app 'Cumulus.app'

  zap delete: [
                '~/Library/Application Support/Cumulus',
                '~/Library/Caches/Cumulus',
                '~/Library/Preferences/com.gillesdemey.cumulus.plist',
                '~/Library/Saved Application State/com.gillesdemey.cumulus.savedState',
              ]
end
