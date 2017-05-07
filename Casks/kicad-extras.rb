cask 'kicad-extras' do
  version '4.0.6'
  sha256 '06a9f9c7ad99dd82115011e63dd40e21519ccc433ccd091b363106afe45302aa'

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
