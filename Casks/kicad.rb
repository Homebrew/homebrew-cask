cask 'kicad' do
  version '4.0.1'
  sha256 '1b29b269b89e4af75b1292a10c75d0977cf573fe99a9f343fa578a0e4f862730'

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
