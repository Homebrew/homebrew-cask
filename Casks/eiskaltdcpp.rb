cask :v1 => 'eiskaltdcpp' do
  version '2.3.0'
  sha256 '86bcc03c00758efc507030c4a7a16c6d04b9ae763b75255dadbc1b4144a7b34f'

  url 'http://downloads.sourceforge.net/sourceforge/eiskaltdcpp/EiskaltDC++-2.3.0-8c41579-x86_64-MacOSX10.9.dmg'
  name 'EiskaltDC++'
  homepage 'https://code.google.com/p/eiskaltdc/'
  license :gpl

  app 'EiskaltDC++.app'
end
