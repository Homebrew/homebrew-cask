cask :v1 => 'appdelete' do
  version :latest
  sha256 :no_check

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  name 'AppDelete'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AppDelete.app'
end
