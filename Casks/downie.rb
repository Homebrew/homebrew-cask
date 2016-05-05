cask 'downie' do
  version '2.3.1222'
  sha256 'fd31564706c422308074fa7961d76047b5eae3276cbc107d90d934a964ad73fd'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: '3ed0de120361da341e4a2a10875e001094a1be61c30a9f82d11eee555fe8c5b0'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
