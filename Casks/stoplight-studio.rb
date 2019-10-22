cask 'stoplight-studio' do
  version '1.2.0'
  sha256 'cc22d3f563df1f2c4cb94a8a206dfcd3d686e8fa743fca45512d87d8c1b23dec'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/Stoplight-Studio-#{version}.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
