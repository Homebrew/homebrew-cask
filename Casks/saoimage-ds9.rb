cask :v1 => 'saoimage-ds9' do
  version '7.3.2'
  sha256 'dcbed96db8c0809468d443aba83d7deed602ba297a9a5b47cc33f7821a1ae13b'

  url "http://ds9.si.edu/download/macosxmavericks/SAOImage%20DS9%20#{version}.dmg"
  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'
  license :oss

  app 'SAOImage DS9.app'

  depends_on :macos => '>= :mavericks'
end
