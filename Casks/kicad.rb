cask 'kicad' do
  version '5.1.0'
  sha256 'f657a5090ed7d2b356aa0cd56f2b5d5cb3b07651f84300e908cf3dd4e08673ab'

  # URL_SECTION is verified as official mirror when introduced to the cask
  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}-10_14.dmg"
  appcast 'http://kicad-pcb.org/download/osx/'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'KiCad'

  zap trash: '~/Library/Preferences/kicad'
end
