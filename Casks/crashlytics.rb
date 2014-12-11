cask :v1 => 'crashlytics' do
  version :latest
  sha256 :no_check

  url 'https://crashlytics.com/download/mac'
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/version.xml'
  homepage 'http://crashlytics.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Crashlytics.app'
end
