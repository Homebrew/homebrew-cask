cask 'ghostlab' do
  version '3.1.1'
  sha256 '90a123a3fafd1301888fd71ee98caf963885a52dd4bb09de159dcfefa82f7630'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast 'https://www.vanamco.com/ghostlab-downloads/'
  name 'Ghostlab'
  homepage 'https://www.vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
