cask 'downie' do
  version '2.3.1218'
  sha256 'fb86d67df20e37a89a26791a4220cce7d8c149817abcb36af3d3e43858e08a03'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: '132c2ffb416ea30a7fa93112ac970f4a08447864b31492f7568006d7ff0103e9'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
