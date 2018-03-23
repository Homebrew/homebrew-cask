cask 'metabase-app' do
  version '0.28.3.0'
  sha256 '3947f17e215956687c0d5988049062e7c35aabdd1f265cfa712101f421d1772f'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '9242415687b295b8672ca43662f474b7d19909515ea0111b0b2884b6722fcc14'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
