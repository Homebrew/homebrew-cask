cask 'downie' do
  version '2.3'
  sha256 'e00bcaf4d9491bef37a3977fb8fc3a4b25b11d0058456207d373b9dd30d83a12'

  url "http://trial.charliemonroe.net/downie/Downie_1205.zip"
  appcast 'http://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '2e9d15651b02965a9963d04450b4a7c99691d2d93f1cdfa2d41cf4d120eaae42'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'
  app 'Downie.app'
end
