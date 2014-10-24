class Droplr < Cask
  version '4.1.2'
  sha256 '495537ae3b18f79d85a45b8e83244e7c906e2f4871119c120d2dff2693ce15d1'

  url 'http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+35.zip'
  appcast 'https://droplr.com/appcast/appcast.xml',
          :sha256 => 'a9de5e093038bb95e9334c21a6e4f9e91148535b559756a2824790522df278f8'
  homepage 'https://www.droplr.com/'
  license :unknown

  app 'Droplr.app'
  zap :delete => '~/Library/Preferences/com.droplr.droplr-mac.plist'
end
