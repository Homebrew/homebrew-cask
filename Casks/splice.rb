cask 'splice' do
  version '2.0.4-201606061702'
  sha256 'e96c8588b9fda69d0c2605f1115f23ffafb783d567bc3a931f24c75e2342a6a9'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'b584e26af194532718a869181ba8f7ac8220fe06b8125cadfa689335554324e3'
  name 'Splice'
  homepage 'https://splice.com/'
  license :gratis

  app 'Splice.app'

  uninstall quit:   'com.splice.Splice'

  zap delete: [
                '~/Library/Application Support/*Splice*',
                '~/Library/Caches/com.splice*',
                '~/Library/Preferences/com.splice*',
              ]
end
