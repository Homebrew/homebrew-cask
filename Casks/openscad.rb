cask 'openscad' do
  version '2015.03-2'
  sha256 '5bd717b100f9a23da4539d2b8771d3817b9066aa4e3e0d63e5a8068d2ecaeb86'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast 'http://files.openscad.org/appcast.xml',
          :sha256 => '6bf06ee7274ba17f1253aef8b5d87c8f3b383c52fb0421bda7ef7505a08890c2'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'
  license :gpl

  app 'OpenSCAD.app'
end
