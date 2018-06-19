cask 'downie' do
  version '3.3.7,1836'
  sha256 '0fff6b409bfb1271435fa24dc98525d3cc6f8ede906d30f83782568411f65aeb'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
