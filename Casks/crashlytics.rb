cask :v1 => 'crashlytics' do
  version :latest
  sha256 :no_check

  url 'https://crashlytics.com/download/mac'
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/version.xml'
  name 'Crashlytics'
  homepage 'http://crashlytics.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Crashlytics.app'
end
