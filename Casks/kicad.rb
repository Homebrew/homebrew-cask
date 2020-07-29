cask 'kicad' do
  version '5.1.6-0'

  if MacOS.version <= :high_sierra
    sha256 'cb2baef00e877509996eb89e5b0addc99298db53bd4bd6c8dc4d8797fd22d809'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg"
  else
    sha256 '8e262b653209776ad32393566be0a0b1c560ade8cb9877bfcf5289dde21b99dd'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}-10_14.dmg"
  end

  appcast 'https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/'
  name 'KiCad'
  homepage 'https://kicad-pcb.org/'

  app 'KiCad/kicad.app',            target: 'KiCad/KiCad.app'
  app 'KiCad/bitmap2component.app', target: 'KiCad/bitmap2component.app'
  app 'KiCad/eeschema.app',         target: 'KiCad/eeschema.app'
  app 'KiCad/gerbview.app',         target: 'KiCad/gerbview.app'
  app 'KiCad/pcb_calculator.app',   target: 'KiCad/pcb_calculator.app'
  app 'KiCad/pcbnew.app',           target: 'KiCad/pcbnew.app'
  app 'KiCad/pl_editor.app',        target: 'KiCad/pl_editor.app'
  artifact 'kicad/help',            target: '/Library/Application Support/kicad/help'
  artifact 'kicad/library',         target: '/Library/Application Support/kicad/library'
  artifact 'kicad/modules',         target: '/Library/Application Support/kicad/modules'
  artifact 'kicad/share',           target: '/Library/Application Support/kicad/share'
  artifact 'kicad/template',        target: '/Library/Application Support/kicad/template'

  uninstall rmdir: [
                     '/Library/Application Support/kicad',
                     "#{appdir}/KiCad",
                   ]

  zap trash: '~/Library/Preferences/kicad'
end
