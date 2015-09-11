cask :v1 => 'scrivener' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scrivener-2.xml'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Scrivener.app'
end
