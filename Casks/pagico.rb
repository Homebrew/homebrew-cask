cask 'pagico' do
  version '8.16.2363'
  sha256 'd6435c88dfe891c79362d45b3a5969fa2485763ff884c47c28e43259e50d7d3a'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
