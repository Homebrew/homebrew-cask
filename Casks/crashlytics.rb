class Crashlytics < Cask
  url 'http://crashlytics.com/download/mac'
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/version.xml'
  homepage 'http://crashlytics.com'
  version 'latest'
  sha256 :no_check
  link 'Crashlytics.app'
end
