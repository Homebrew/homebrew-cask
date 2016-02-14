cask 'geotagalog' do
  version '1.5.6'
  sha256 'ec63b37e61705a0ab796c917b3a312720796acf0124cd513201ce0cfc1a52612'

  url "http://calftrail.com/release/Geotagalog-#{version}.zip"
  name 'Geotagalog'
  homepage 'http://calftrail.com/geotagalog'

  app 'Geotagalog.app'

  zap delete: [
                '~/Library/Preferences/com.calftrail.geotagalog.plist',
              ]
end
