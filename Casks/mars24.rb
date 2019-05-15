cask 'mars24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.0.1'
  sha256 'ecc5b394ab8e19d69458e531943f04ae01dc1c64861e3c163666f7b5f38f32b0'

  url "https://www.giss.nasa.gov/tools/mars24/download/Mars24MacOS-#{version}.dmg"
  name 'Mars24'
  homepage 'https://www.giss.nasa.gov/tools/mars24/'

  app 'Mars24.app'

  caveats do
    depends_on_java
  end
end
