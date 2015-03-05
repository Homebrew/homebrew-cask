cask :v1 => 'smartloader' do
  version :latest
  sha256 :no_check

  url 'http://download.picturelife.com/mac/Picturelife.dmg'
  homepage 'http://picturelife.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Smartloader.app'
end
