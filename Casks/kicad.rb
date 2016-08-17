cask 'kicad' do
  version '4.0.3'
  sha256 '8b1518e6c83b35c5be1bca630d5d486eb80fbe6495cbb8fdd9c057389a87c85f'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: "#{ENV['HOME']}/Library/Application Support/kicad"

  preflight do
    system_command '/bin/mkdir', args: ['--', "#{staged_path}/Kicad-apps"]
    system_command '/bin/mv', args: ['--', *Dir["#{staged_path}/Kicad/*.app"], "#{staged_path}/Kicad-apps/"]
  end
end
