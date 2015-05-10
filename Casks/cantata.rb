cask :v1 => 'cantata' do
  version '1.5.2'
  sha256 '564eec8b60d7e46670b8c67686db8a69210f540626bdbaf8c837b48c0bd2ffc8'

  # google.com is the official download host per the vendor homepage
  url 'https://drive.google.com/uc?export=download&id=0Bzghs6gQWi60WmNlSDh6dTVzYTg'
  name 'cantata'
  homepage 'https://github.com/cdrummond/cantata'
  license :gpl

  app 'Cantata.app'
end
