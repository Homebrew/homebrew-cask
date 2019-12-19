cask 'saoimageds9' do
  version '8.1'

  if MacOS.version == :high_sierra
    sha256 '7cd4e49c47b30c3dbe13ef69a8d0577beaf241376c0cd77c4f8ec55afffebb9f'
    url "http://ds9.si.edu/download/macoshighsierra/SAOImageDS9%20#{version}.dmg"
  elsif MacOS.version == :mojave
    sha256 'bf95a1001189c029f4e134b2373375151f6c56415befce38f80e605801f0e7ef'
    url "http://ds9.si.edu/download/macosmojave/SAOImageDS9%20#{version}.dmg"
  else
    sha256 'cc51c76b9821d8af755d32921602cebf7a468164d1e1d064a86acf6d07ad4435'
    url "http://ds9.si.edu/download/macoscatalina/SAOImageDS9%20#{version}.dmg"
  end

  appcast 'http://ds9.si.edu/site/Download.html'
  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'

  depends_on macos: '>= :high_sierra'

  app 'SAOImageDS9.app'
end
