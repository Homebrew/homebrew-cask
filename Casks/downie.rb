cask 'downie' do
  version '2.5.2,1318'
  sha256 'c459c394108d18c09b8616e77f7540f130d1c0e210d587cbcbbedb63de908d94'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '1f68df6f83f4eac6e5da43e455ccb39150e1c21b38da915b01f0bab7c6e927c1'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
