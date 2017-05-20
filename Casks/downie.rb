cask 'downie' do
  version '2.8.7,1473'
  sha256 '85be9b160cf4c87c8ff5fccc0384b2a7a2918aa01be62aed131293d50a231a1b'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'd3e2d092a60a774d4ccc4fea12e6468cf5d826d18f6fda28603e5289e797d400'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
