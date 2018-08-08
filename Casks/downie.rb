cask 'downie' do
  version '3.4.1,1858'
  sha256 'd83308123ba1acdddb93050c359a6fbf980307c6386a66dfca2702bbca018f19'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
