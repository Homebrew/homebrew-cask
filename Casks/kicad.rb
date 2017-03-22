cask 'kicad' do
  version '4.0.6'
  sha256 '4dcb90384a1165120dbef9225b6cd4a94d07c910341c8d798f91bb6929225021'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  appcast 'http://downloads.kicad-pcb.org/osx/stable/',
          checkpoint: '88ea715ba78f5303b3d0f9df4376ecbef44e8f041cd147adde482b91cc84dd5b'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: "#{ENV['HOME']}/Library/Application Support/kicad"

  preflight do
    system_command '/bin/mkdir', args: ['--', "#{staged_path}/Kicad-apps"]
    system_command '/bin/mv', args: ['--', *Dir["#{staged_path}/Kicad/*.app"], "#{staged_path}/Kicad-apps/"]
  end
end
