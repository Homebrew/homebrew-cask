cask :v1 => 'krita' do
  version '2.8.79.10'
  sha256 '2a80c2cf856fbbb799db8cea0ed8a43346e10cfb465bf8a4e181a1142bee62cd'

  # valdyas.org is the official download host per the vendor homepage
  url "http://www.valdyas.org/~boud/Krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
