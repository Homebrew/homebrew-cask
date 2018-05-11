cask 'metabase-app' do
  version '0.29.2.0'
  sha256 '1117c713f0b6a098ab4f47ada255b041c00baa21166b5e3f5216e66f8a76a03e'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '69eb39e0d50269ca61cd300256895e5bc9f5dedcdcadba213347e4e1be3733a2'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
