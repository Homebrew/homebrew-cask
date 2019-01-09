cask 'saoimageds9' do
  version '8.0.1'

  if MacOS.version == :el_capitan
    sha256 '7b13be040388cbc40c3934254d5a5b9b693c46e06dd155692066be8075456270'
    url "http://ds9.si.edu/download/macosxelcapitan/SAOImageDS9%20#{version}.dmg"
  elsif MacOS.version == :sierra
    sha256 '1617f3c171fb0d66972834e3703cb80bcaa019541a46d9659ffbf64b8b1503ce'
    url "http://ds9.si.edu/download/macossierra/SAOImageDS9%20#{version}.dmg"
  else
    sha256 '96ab807d7c85955ee2fb4b3cdf3987f0dc49b8c20b250a2b8274b13b6862763c'
    url "http://ds9.si.edu/download/macoshighsierra/SAOImageDS9%20#{version}.dmg"
  end

  appcast 'http://ds9.si.edu/site/Download.html'
  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'

  depends_on macos: '>= :yosemite'

  app 'SAOImageDS9.app'
end
