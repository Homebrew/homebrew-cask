cask 'downie' do
  version '2.5.4,1323'
  sha256 '2ebc773ac896df61014c8bd8274245ce4cb0a4f3bd37a8b7dc198f1e950011bf'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '77bda9c8d2db9891c8c8eda3909183cf9c2be7b5f3811e9296d3bc60a8b7b073'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
