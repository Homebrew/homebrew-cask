cask 'metabase' do
  version '0.33.5.0'
  sha256 '4c53a18b92bb55e88fff1551b9bdc1e083eb8fce3081d6d4af3a88539ac486f0'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
