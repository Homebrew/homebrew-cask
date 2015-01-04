cask :v1 => 'scapple' do
  version :latest
  sha256 :no_check

  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  name 'Scapple'
  appcast 'http://www.literatureandlatte.com/downloads/scapple/scapple.xml'
  homepage 'https://www.literatureandlatte.com/scapple.php'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Scapple.app'
end
