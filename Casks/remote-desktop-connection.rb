cask :v1 => 'remote-desktop-connection' do
  version '2.1.1'
  sha256 '4ebe551c9ee0e2da6b8f746be13c2df342c6f14cd3fbedbf2ab490f09b44616f'

  url "http://download.microsoft.com/download/C/F/0/CF0AE39A-3307-4D39-9D50-58E699C91B2F/RDC_#{version}_ALL.dmg"
  homepage 'http://www.microsoft.com/en-us/download/details.aspx?id=18140'
  license :unknown

  pkg 'RDC Installer.mpkg'

  uninstall :pkgutil => 'com.microsoft.rdc.all.*'
end
