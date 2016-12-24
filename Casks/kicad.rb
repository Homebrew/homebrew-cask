cask 'kicad' do
  version '4.0.5'
  sha256 'b9747534aa29074eeb383dd4b506cf76e977f5b222dd08022d856a48d6137049'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: "#{ENV['HOME']}/Library/Application Support/kicad"

  preflight do
    system_command '/bin/mkdir', args: ['--', "#{staged_path}/Kicad-apps"]
    system_command '/bin/mv', args: ['--', *Dir["#{staged_path}/Kicad/*.app"], "#{staged_path}/Kicad-apps/"]
  end
end
