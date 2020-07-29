cask 'dynobase' do
  version '0.8.2'
  sha256 '4a71492534e449a8c943ed8c6e2ab4350fd96363a58d4402243b2254f416611f'

  # github.com/Dynobase/dynobase was verified as official when first introduced to the cask
  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg"
  appcast 'https://github.com/Dynobase/dynobase/releases.atom'
  name 'Dynobase'
  homepage 'https://dynobase.dev/'

  app 'Dynobase.app'

  zap trash: [
               '~/Library/Application Support/dynobase',
               '~/Library/Saved Application State/com.rwilinski.dynobase.savedState',
             ]
end
