cask 'kicad' do
  version '5.1.2-1'

  if MacOS.version <= :high_sierra
    sha256 '1990929ed40b6a62abc38f0eb8b9f7c8f20b6a11f664f379e7b9c8c861df3498'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg"
  else
    sha256 'd5c918fae018d2542085b74b06c605808c92dcb81e5d95ac5efab9f38540b3fc'
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
