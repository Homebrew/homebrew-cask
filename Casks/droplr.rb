cask :v1 => 'droplr' do
  version '4.2.2'
  sha256 'aafe5a9d6b3e9318a406d9283cb25d56ac1ed72d3d318361ba85f8e4d8aba8bf'

  url 'http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+41.zip'
  appcast 'https://droplr.com/appcast/appcast.xml',
          :sha256 => 'a9de5e093038bb95e9334c21a6e4f9e91148535b559756a2824790522df278f8'
  homepage 'https://www.droplr.com/'
  license :unknown

  app 'Droplr.app'

  zap :delete => '~/Library/Preferences/com.droplr.droplr-mac.plist'
end
