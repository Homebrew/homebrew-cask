cask 'cursorsense' do
  version '1.3.5'
  sha256 '67f3d3a7c82eb35cc326c134cfb5b6c4fd7ad78f2672912546108508b01a5381'

  url "http://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  appcast 'http://plentycom.jp/en/cursorsense/download.php'
  name 'CursorSense'
  homepage 'http://plentycom.jp/en/cursorsense/'

  prefpane 'CursorSense.prefPane'
end
