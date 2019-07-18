cask 'mars24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.0.3'
  sha256 '9f34d8988b30b49bfd1cdaf592276337a4a4b88b0f487cdfcc04e4658b2533dd'

  url "https://www.giss.nasa.gov/tools/mars24/download/Mars24MacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/mars24/download/'
  name 'Mars24'
  homepage 'https://www.giss.nasa.gov/tools/mars24/'

  app 'Mars24.app'

  caveats do
    depends_on_java
  end
end
