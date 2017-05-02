cask 'kicad-extras' do
  version '4.0.6'
  sha256 '06a9f9c7ad99dd82115011e63dd40e21519ccc433ccd091b363106afe45302aa'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-extras-#{version}.dmg"
  name 'KiCad Extras'
  homepage 'http://kicad-pcb.org/'

  depends_on cask: 'kicad'

  artifact 'modules', target: '/Library/Application Support/kicad/modules'

  preflight do
    system_command '/bin/mv', args: ['--', '/Library/Application Support/kicad/modules', '/Library/Application Support/kicad/modules.github']
    system_command '/bin/cp', args: ['-f',
                                     '/Library/Application Support/kicad/template/fp-lib-table.for-pretty',
                                     '/Library/Application Support/kicad/template/fp-lib-table']
  end

  uninstall_preflight do
    unless File.directory?('/Library/Application Support/kicad/modules.github')
      system_command '/bin/mv', args: ['--', '/Library/Application Support/kicad/modules', '/Library/Application Support/kicad/modules.github']
    end
  end

  uninstall_postflight do
    system_command '/bin/mv', args: ['--', '/Library/Application Support/kicad/modules.github', '/Library/Application Support/kicad/modules']
    system_command '/bin/cp', args: ['-f',
                                     '/Library/Application Support/kicad/template/fp-lib-table.for-github',
                                     '/Library/Application Support/kicad/template/fp-lib-table']
  end
end
