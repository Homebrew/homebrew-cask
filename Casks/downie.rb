cask 'downie' do
  version '2.6.1,1356'
  sha256 'a715f9dbb98b0e7e62486ef95f5b6d015608745682712b25e4c385cbc7f34ee9'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '653b1a3d2a1292c9aa1469f39aa231b19c256e1991374663d62d63b2fd9e81e4'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
