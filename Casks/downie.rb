cask 'downie' do
  version '2.5.6,1329'
  sha256 '7bb3c7978d12d7176853aadf76f03a778a0b58ad3dfd211d4136bc018c66246f'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'e372e06630265daf9107bb52380333da0189100fdcde90768cad6f0323ea7655'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
