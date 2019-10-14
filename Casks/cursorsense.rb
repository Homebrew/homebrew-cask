cask 'cursorsense' do
  version '2.0.1'
  sha256 'c7567d46ae2fde4d80d9713c1323da543ec1b26753996b37624993bcbd32a9c1'

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  appcast 'https://plentycom.jp/en/cursorsense/download.php'
  name 'CursorSense'
  homepage 'https://plentycom.jp/en/cursorsense/'

  depends_on macos: '>= :sierra'

  prefpane 'CursorSense.prefPane'
end
