cask :v1 => 'droplr' do
  version '4.2.0'
  sha256 'e68b9c618fbbb2c4c27dab69acc088a441ab3a7571fa62e9108673751d04ab88'

  url 'http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+39.zip'
  appcast 'https://droplr.com/appcast/appcast.xml',
          :sha256 => 'a9de5e093038bb95e9334c21a6e4f9e91148535b559756a2824790522df278f8'
  homepage 'https://www.droplr.com/'
  license :unknown

  app 'Droplr.app'
  zap :delete => '~/Library/Preferences/com.droplr.droplr-mac.plist'
end
