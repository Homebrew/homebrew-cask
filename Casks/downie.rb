cask 'downie' do
  version '2.8.4,1465'
  sha256 '80bd572edf62f7b21f03058f5a6465e56934b20060d9a2ca40ae68354adcd842'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'c7305024c02128466f8349fa22d66d643a6e2e105ed7939da955d9296757d2d8'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
