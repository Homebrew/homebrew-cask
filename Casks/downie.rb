cask 'downie' do
  version '3.8.3,2055'
  sha256 '22c6e19dce2a609745679bef92c1a90bc1b27b48c2e1a229d01b9df06379b374'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
