cask 'dynobase' do
  version '0.8.3'
  sha256 'b21991aa4a62e02d10aba8be031af943d959252e8053b72396a3ec8efcb438e3'

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
