cask 'dynobase' do
  version '0.8.0'
  sha256 '90de943e67fcb8140ee6f3cab4bf00aba5c2f0e23ca421f6368930274067b991'

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
