cask 'mars24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '7.1.3'
  sha256 '78c40b1823f02ceb8de6ff6eb00461f272f0ce9305dda6c6f52361ed5cfb7489'

  url "https://www.giss.nasa.gov/tools/mars24/download/Mars24MacOS-#{version}.dmg"
  name 'Mars24'
  homepage 'https://www.giss.nasa.gov/tools/mars24/'

  app 'Mars24.app'

  caveats do
    depends_on_java
  end
end
