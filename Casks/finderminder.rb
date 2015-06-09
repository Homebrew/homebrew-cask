cask :v1 => 'finderminder' do
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/downloads/?file=FinderMinder.zip'
  name 'FinderMinder'
  homepage 'http://irradiatedsoftware.com/labs'
  license :gratis

  app 'FinderMinder.app'

  accessibility_access true

  zap :delete => '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
