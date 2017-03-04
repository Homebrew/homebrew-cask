cask 'kicad' do
  version '4.0.5'
  sha256 '4e15567c655176bd8d187d8d9c3e9413e7777e84bd5cef057f04b5895a5e786b'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  appcast 'http://downloads.kicad-pcb.org/osx/stable/',
          checkpoint: '356ff8ea5663cc43501727300029e2d5e3a2d8eea4878c4c1a4bbfb407ba9739'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: "#{ENV['HOME']}/Library/Application Support/kicad"

  preflight do
    system_command '/bin/mkdir', args: ['--', "#{staged_path}/Kicad-apps"]
    system_command '/bin/mv', args: ['--', *Dir["#{staged_path}/Kicad/*.app"], "#{staged_path}/Kicad-apps/"]
  end
end
