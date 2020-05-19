cask 'metabase' do
  version '0.35.3'
  sha256 'd38cc9a081c2eb23edeb175c45398059cf670418163b77e7f348e34d3460ec8e'

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
