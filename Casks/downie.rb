cask 'downie' do
  version '3.4.6,1881'
  sha256 'd6203e98a7be7933b57d7a428a436215c03b83808d1429c69230a720223349c9'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
