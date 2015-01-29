cask :v1 => 'jahshaka' do
  version '2.0'
  sha256 '35f0c2a70639a06f89edca5b8f349a1c1b1cc690914e41241d350e19f99a81bf'

  url 'http://downloads.sourceforge.net/sourceforge/jahshakafx/Jahshaka-binary/2.0/jahshaka-2.0-osx-intel.dmg'
  name 'Jahshaka'
  homepage 'http://www.jahshaka.com/'
  license :gpl

  pkg 'jahshaka-2.0.mpkg'
end
