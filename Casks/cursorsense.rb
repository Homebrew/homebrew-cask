cask 'cursorsense' do
  version '2.0'
  sha256 '1dc68c102f5aab32397aba73d209607dc2215f0a809d2d65ddf8161d5dca5910'

  url "https://plentycom.jp/ctrl/files_cs/CursorSense#{version}.dmg"
  appcast 'https://plentycom.jp/en/cursorsense/download.php'
  name 'CursorSense'
  homepage 'https://plentycom.jp/en/cursorsense/'

  depends_on macos: '>= :sierra'

  prefpane 'CursorSense.prefPane'
end
