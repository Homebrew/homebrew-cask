cask 'downie' do
  version '3.5.1,1911'
  sha256 '80305ca0c8902bbb1b18ec6bff3221e4b2ef5fb8910f801c8db3776331af850d'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
