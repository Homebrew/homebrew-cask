cask 'mars24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.0.0'
  sha256 'a0dc3e943219927be483534e14cedde0632827a5841772109262adad62c19dbe'

  url "https://www.giss.nasa.gov/tools/mars24/download/Mars24MacOS-#{version}.dmg"
  name 'Mars24'
  homepage 'https://www.giss.nasa.gov/tools/mars24/'

  app 'Mars24.app'

  caveats do
    depends_on_java
  end
end
