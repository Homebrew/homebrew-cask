cask 'saoimageds9' do
  version '7.6'

  if MacOS.version == :yosemite
    sha256 'f1207cdd65a2f1820f4aa149fa0dd5c8c2032cafc36d805e9dce76ba402acac0'
    url "http://ds9.si.edu/download/macosxyosemite/SAOImageDS9%20#{version}.dmg"
  elsif MacOS.version == :el_capitan
    sha256 'eb1b01fcb75ec67a66f39294cf8ac18169f96d1ef1114a1ded66702b2fbe487e'
    url "http://ds9.si.edu/download/macosxelcapitan/SAOImageDS9%20#{version}.dmg"
  elsif MacOS.version == :sierra
    sha256 '6ddd52ad39e573599c4cb4b21202d84dc6f46cb8800e3d698f00d3c41af6d30f'
    url "http://ds9.si.edu/download/macossierra/SAOImageDS9%20#{version}.dmg"
  else
    sha256 'b45d1cb4f621388837836179c114f34e3ebd24e23b53feeed9774fc0db182f69'
    url "http://ds9.si.edu/download/macoshighsierra/SAOImageDS9%20#{version}.dmg"
  end

  appcast 'http://ds9.si.edu/site/Download.html'
  name 'SAOImage DS9'
  homepage 'http://ds9.si.edu/site/Home.html'

  depends_on macos: '>= :yosemite'

  app 'SAOImageDS9.app'
end
