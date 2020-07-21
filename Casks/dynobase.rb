cask 'dynobase' do
  version '0.8.6'
  sha256 '2a8a0b5f85946a5daf1903ed428824fb91900599924b90aab6e235c6d141472d'

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
