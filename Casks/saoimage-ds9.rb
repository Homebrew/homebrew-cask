cask 'saoimage-ds9' do
  version '7.4.1'

  if MacOS.release <= :mountain_lion
    sha256 '91bf399b974a5e5d12d09e7f9f4a8acf826813eb1b05d865c0ac070fab58aca3'
    url "http://ds9.si.edu/download/macosxmountainlion/SAOImage%20DS9%20#{version}.dmg"
  elsif MacOS.release <= :mavericks
    sha256 '35767c2e6116e49b9569180847ceb90fb1bf0d6379254b8834709b67e8e65e8d'
    url "http://ds9.si.edu/download/macosxmavericks/SAOImage%20DS9%20#{version}.dmg"
  elsif MacOS.release <= :yosemite
    sha256 '6ff7b79f2b0e3b07b990b467fcecfdc35ba0cc6aa7575d97102b21791e9f3bf0'
    url "http://ds9.si.edu/download/macosxyosemite/SAOImage%20DS9%20#{version}.dmg"
  else
    sha256 'a013cd1e2917e8457dbd41b07d831f532bac9c77620bf5bcde8392bca3184b1a'
    url "http://ds9.si.edu/download/macosxelcapitan/SAOImage%20DS9%20#{version}.dmg"
  end

  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'
  license :oss

  app 'SAOImage DS9.app'
end
