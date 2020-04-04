cask 'metabase' do
  version '0.35.1'
  sha256 '967bd3806a455b56b8f22df35e77f765e5b0abb0aefd7a31572c230d669a1fe3'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
