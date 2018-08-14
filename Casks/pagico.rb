cask 'pagico' do
  version '8.14.2319'
  sha256 '8c551c66126f5ab3ea8aebe99505777742950edac67ef0f9a1ee97c5bceaf2b9'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
