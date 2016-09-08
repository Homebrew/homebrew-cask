cask 'downie' do
  version '2.4.9,1279'
  sha256 '6269751de9efdcdf81c513c72c5ca9a5e3bba4b7085d81107095659ae9cf9456'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '6902888d374e4b9e9957f6a405d6bae993db108b1440f18ca964e1824054675b'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
