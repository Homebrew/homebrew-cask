cask 'downie' do
  version '2.8.8,1476'
  sha256 'b4d3fa995177ec7c3ce5eadb1b8647ae74898a718d7f6ee094d38716ae4113dd'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '6cce2e1207e8977d9b3a7c3469672c50909e503c66b609c7681e7d8863cf2d2f'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
