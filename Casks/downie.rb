cask 'downie' do
  version '3.4.5,1876'
  sha256 '5bd3bddb35b4837fc0a80f6f1760ef6da676498b16bb027fc954bcab3d7abda1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
