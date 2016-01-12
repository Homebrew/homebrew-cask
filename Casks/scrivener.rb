cask 'scrivener' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scrivener-2.xml',
          :sha256 => '8c0a0f8dae52c78c1884dbc506fa27a51b0ac114ae7be5b2da6bb4479b6113bb'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'
  license :commercial

  app 'Scrivener.app'
end
