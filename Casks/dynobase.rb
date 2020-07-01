cask 'dynobase' do
  version '0.8.4'
  sha256 'f57ba3510c3191a62ad8701e15640280cd024fbed294c4c984db6fef862a254c'

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
