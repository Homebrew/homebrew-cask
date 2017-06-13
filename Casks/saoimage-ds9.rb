cask 'saoimage-ds9' do
  version '7.5'

  if MacOS.version == :yosemite
    sha256 '2b8df99204f6d739da4e4dc784056350ee7670ac896baa16be8f2fb0847a9755'
    url "http://ds9.si.edu/download/macosxyosemite/SAOImage%20DS9%20#{version}.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'bfb80ed0311034ac060fc7ef455fae4056870c93f06f90606da4fd49eb551b4b'
    url "http://ds9.si.edu/download/macosxelcapitan/SAOImage%20DS9%20#{version}.dmg"
  else
    sha256 '4fde92df2c2b216de34eff8b962c24f0a49b93c641575f5ea4f68009b97b45e9'
    url "http://ds9.si.edu/download/macosxsierra/SAOImage%20DS9%20#{version}.dmg"
  end

  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'

  depends_on macos: '>= :yosemite'

  app 'SAOImage DS9.app'
end
