cask :v1 => 'focus' do
  version :latest
  sha256 :no_check

  url 'http://www.heyfocus.com/releases/Focus-latest.zip'
  appcast 'http://www.heyfocus.com/appcast.xml'
  homepage 'http://www.heyfocus.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Focus.app'
end
