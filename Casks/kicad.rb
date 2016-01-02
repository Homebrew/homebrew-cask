cask 'kicad' do
  version '4.0.0'
  sha256 '71b47ce37acd1d32eaee898254114203ef2de8b382f1353db7a01caa37a798e5'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  preflight do
    system '/bin/mkdir', '--', "#{staged_path}/Kicad-apps"
    system '/bin/mv', '--', "#{staged_path}/Kicad/*.app", "#{staged_path}/Kicad-apps/"
  end

  suite 'Kicad-apps', :target => 'Kicad'
  artifact 'kicad', :target => "#{ENV['HOME']}/Library/Application Support/kicad"
end
