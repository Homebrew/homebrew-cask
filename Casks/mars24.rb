cask 'mars24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.0.2'
  sha256 'daa55c64959dfe4e63284291391d042ba4c3cb9585f503a51c526fbbd118075a'

  url "https://www.giss.nasa.gov/tools/mars24/download/Mars24MacOS-#{version}.dmg"
  name 'Mars24'
  homepage 'https://www.giss.nasa.gov/tools/mars24/'

  app 'Mars24.app'

  caveats do
    depends_on_java
  end
end
