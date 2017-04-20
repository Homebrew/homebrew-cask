cask 'downie' do
  version '2.8.3,1462'
  sha256 '14f162e1da2432889685db50de05f1be88289ec668d89a82650552f7cbdd825b'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '3a2f070fa765275bac5ca74b4657e2a03c66e080b49269e03c1b872c9eef8c6f'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
