cask 'downie' do
  version '2.5.3,1320'
  sha256 'c7ad36ddd170915290da69875899874a12cba60232af27a82ac5ca1395d591c2'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '7295a46bbd664745196bb7467fc1b009d29f8adf289d0f129aededea7883f1c3'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
