cask :v1 => 'epic' do
  version :latest
  sha256 :no_check

  # kxcdn.com is the official download host per the vendor homepage
  url 'https://macepic-cbe.kxcdn.com/Alt/Epic.dmg'
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml'
  homepage 'http://www.epicbrowser.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Epic.app'
end
