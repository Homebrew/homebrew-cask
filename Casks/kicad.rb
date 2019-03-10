cask 'kicad' do
  if MacOS.version <= :high_sierra
    version '5.0.2-5'
    sha256 '1fc507987dfbc637805f1e1294480abdf869933d3300c01de691b12d655e84c7'
  else
    version '5.0.2-5-10_14'
    sha256 'f2c98036b624dce756ed0c01cac70ee2a096cb74df4d40e3358b4d2613b65d39'
  end

  # kicad-downloads.s3.cern.ch was verified as official when first introduced to the cask
  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg"
  appcast 'http://downloads.kicad-pcb.org/osx/stable/'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'KiCad'
  artifact 'kicad', target: "/Library/Application Support/kicad"

  zap trash: [
      '~/Library/Preferences/kicad',
      '/Library/Application Support/kicad'
  ]
end
