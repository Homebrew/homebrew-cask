cask 'kicad' do
  version '5.1.0'

  if MacOS.version <= :high_sierra
    sha256 'be024d121a42c9d1e1ea08fdf9dd2ad24cf77879d7f32214b2de13322cd18bae'
    url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg"
  else
    sha256 '23955e59e0ac1fe7db86156e0470bd2bc8f1c1666ef1c5def5fa3a82932c9907'
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
