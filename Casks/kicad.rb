cask 'kicad' do
  version '5.1.4-0'

  if MacOS.version <= :high_sierra
    sha256 '09d77a429f8e256499041d8d06b5a39c9a1469c68a19c6068acf5e93c3e4dff4'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg"
  else
    sha256 '39c30d09b7a6303209c0398f3787d9618fc5c23b09282654e3691895b421905d'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}-10_14.dmg"
  end

  appcast 'https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

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
