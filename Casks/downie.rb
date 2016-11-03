cask 'downie' do
  version '2.5.7,1333'
  sha256 '7e1a229de1e0441dea133d30bc2df20645db67aaa0b36eef2209e51450a45b1b'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '6a0e14a68069f7f5bcb469d03e3bace664afad3ee3a5536f2d557520a36651e7'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
