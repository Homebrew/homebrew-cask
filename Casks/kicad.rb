cask 'kicad' do
  version '5.1.5-0'

  if MacOS.version <= :high_sierra
    sha256 '321567935eaeb9184d3595294da3c895175d3e53cf19aa227ecb6adcb792f3a6'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg"
  else
    sha256 'c51aa2b997124c92faaead694e7ea633808d3a1d838f5331632ea5864ac32ecf'
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
                     '/Applications/KiCad',
                   ]

  zap trash: '~/Library/Preferences/kicad'
end
