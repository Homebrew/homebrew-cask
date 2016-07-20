cask 'downie' do
  version '2.4.1262'
  sha256 '6341ca7087b39a01a486b9eb251a728830bb8e9533a094a31c39e34808eba2b9'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast 'http://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '5446f97e632084e6b70226a93bfbf7b33cbad0daf3d5a89a9d78eaf36b802aa5'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
