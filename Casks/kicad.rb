cask 'kicad' do
  version '4.0.7'
  sha256 '4ea15b3682f6213bb385a5abbdd2fd9b622045d68232855b460231beeaa58f4d'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  appcast 'http://downloads.kicad-pcb.org/osx/stable/',
          checkpoint: '5bcd4d71ddbeb7a063c7e1907adb628f261a9f2843848a054574f2d2c8f18e9a'
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
