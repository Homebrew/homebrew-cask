cask 'metabase' do
  version '0.36.0'
  sha256 '22c6eddb4d8df68d36c65c3552282d06e91c92565d5b1309ccbe4678097f3674'

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
