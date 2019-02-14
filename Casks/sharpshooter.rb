cask 'sharpshooter' do
  if MacOS.version <= :mountain_lion
    version '2.0.5'
    sha256 '99d11c021b4b1e4fe0f762d44e143b4ef678ef9eae5977c7b7c4e8a2a15f97f0'
  elseif MacOS.version <= yosemite
    version '2.2.2'
    sha256 '8c3154df1cc632f31e57cecc32a8704d9898b5dc30551f6fd2f22ca3365ba041'
  else
    version '2.4.3'
    sha256 '7593bf59c9e81ba5b1aa6f16c292237e2b5b8353a1d271ca47c25c28f99c4570'
  end
  url "http://www.kerlmax.com/products/sharpshooter/Sharpshooter_#{version}.zip"
  appcast 'http://www.kerlmax.com/products/sharpshooter/sharpshooter_v2_appcast.php'
  name 'Sharpshooter'
  homepage 'http://www.kerlmax.com/products/sharpshooter/'

  app 'Sharpshooter.app'
end
