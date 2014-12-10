cask :v1 => 'appdelete' do
  version :latest
  sha256 :no_check

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :unknown    # todo: improve this machine-generated value

  app 'AppDelete.app'
end
