cask 'kicad' do
  version '5.0.0-1'
  sha256 'e7045cc6ebe0e6fe6557a8dcf7a1d0e959e8be69d28de7cca0307938d876f618'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-unified-#{version}.dmg"
  appcast 'http://downloads.kicad-pcb.org/osx/stable/'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: '/Library/Application Support/kicad'

  preflight do
    FileUtils.cd staged_path do
      FileUtils.mkdir 'Kicad-apps'
      FileUtils.mv Dir.glob('Kicad/*.app'), 'Kicad-apps'
    end
  end

  zap trash: '~/Library/Preferences/kicad'
end
