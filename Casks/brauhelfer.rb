cask 'brauhelfer' do
  version '1.4.3.2'
  sha256 '51bfb781be422c42cf80d9bc8716a3ef8612c6df658848eb67cbebc80f80f616'

  url "http://www.joerum.de/kleiner-brauhelfer/lib/exe/fetch.php?media=download:01_04_03_02:kb_osx_#{version}.dmg"
  name 'Kleiner Brauhelfer'
  homepage 'http://www.joerum.de/kleiner-brauhelfer'

  app 'brauhelfer.app'
end
