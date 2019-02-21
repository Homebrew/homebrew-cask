cask 'downie' do
  version '3.6.1,1947'
  sha256 'caf222f0ed81ee59a062d6e20d419c787fb9dbb5acee8a97b7076fc41fc56b31'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
