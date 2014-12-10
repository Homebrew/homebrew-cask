cask :v1 => 'smartloader' do
  version :latest
  sha256 :no_check

  url 'http://download.picturelife.com/mac/Picturelife.dmg'
  homepage 'http://picturelife.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Smartloader.app'
end
