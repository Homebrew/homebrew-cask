cask :v1 => 'cloudapp' do
  version '3.3.0'
  sha256 'd2a0dc3a2ecff33b18e1d98d2e51db2f9a63ee6ec795ba862346a718dd8bc41d'

  url 'https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-3.3.0.dmg'
  name 'CloudApp'
  homepage 'http://http://getcloudapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CloudApp.app'
end
