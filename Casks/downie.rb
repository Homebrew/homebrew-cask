cask 'downie' do
  version '3.2.7,1800'
  sha256 'b3f1cb92b8b0ebdb3157a0de288fdd2bb2d0554df7b9a730d1c523c8d7ed62b8'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '210fcc35dac67cfdd2e42b7d7be38d945fa42eec7a357e4d1d7b384315895180'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
