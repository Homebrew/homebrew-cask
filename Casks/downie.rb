cask 'downie' do
  version '2.9.1,1486'
  sha256 '302f7cf0c9da10e21032a09d98da6ad6f6f52fe31632a74894bafabc593e7289'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '030d8f3e46d92d0bb9e8b86ab78ea38fd588247c2e00a309e4c1cf7d0b98461a'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
