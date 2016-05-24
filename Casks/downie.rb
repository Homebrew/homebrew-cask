cask 'downie' do
  version '2.3.1234'
  sha256 '7daac90f6137e598288f28c89313c58aef40cc14f30c7b6512fe29ff730f6664'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: 'e0e26b5c9551b577faeb8ae7fe05604424828b2156aed44f1eab34d0836d0afc'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
