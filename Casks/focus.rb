cask :v1 => 'focus' do
  version :latest
  sha256 :no_check

  url 'https://heyfocus.com/releases/Focus-latest.zip'
  appcast 'https://heyfocus.com/appcast.xml'
  name 'Focus'
  homepage 'https://heyfocus.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Focus.app'
end
