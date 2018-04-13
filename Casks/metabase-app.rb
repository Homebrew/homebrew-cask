cask 'metabase-app' do
  version '0.28.6.0'
  sha256 '441cca34b727ad368f0294952664462c0994e5a50ec869123538dd8723304c70'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '03ac38391d9e19f7fef0a612d23ca666722e86236e62a694483b3d0168787070'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
