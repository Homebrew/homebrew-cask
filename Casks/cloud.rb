cask :v1 => 'cloud' do
  version '3.1.0'
  sha256 'f412e020c8307ef5872c0c5236f8bc1f1548c47d10b19315aba24ebd391cf293'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  name 'CloudApp'
  homepage 'http://getcloudapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CloudApp.app'

  zap :delete => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
