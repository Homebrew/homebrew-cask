cask 'downie' do
  version '2.7.9,1453'
  sha256 'c1e7ab4f47d8e4a81777255d465d0ad12475083445a52b3391cc41e512d60663'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '2e1fdf64425f79b4c532b80848ea4099dc58f624415a9a30cfa6f4189da6185f'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
