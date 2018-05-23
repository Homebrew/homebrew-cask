cask 'kicad-extras' do
  version '4.0.7'
  sha256 '913dd8553d72a79ae94b5746ce78b44ee1ff9479238b70b05cea17086f059487'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-extras-#{version}.dmg"
  name 'KiCad Extras'
  homepage 'http://kicad-pcb.org/'

  depends_on cask: 'kicad'

  artifact 'modules', target: '/Library/Application Support/kicad/modules'

  preflight do
    FileUtils.cd '/Library/Application Support/kicad/' do
      FileUtils.mv 'modules', 'modules.github'
      FileUtils.cp 'template/fp-lib-table.for-pretty', 'template/fp-lib-table'
    end
  end

  uninstall_preflight do
    FileUtils.cd '/Library/Application Support/kicad/' do
      FileUtils.mv 'modules', 'modules.github' unless File.exist?('modules.github')
    end
  end

  uninstall_postflight do
    FileUtils.cd '/Library/Application Support/kicad/' do
      FileUtils.mv 'modules.github', 'modules'
      FileUtils.cp 'template/fp-lib-table.for-github', 'template/fp-lib-table'
    end
  end
end
