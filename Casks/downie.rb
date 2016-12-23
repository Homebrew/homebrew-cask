cask 'downie' do
  version '2.6,1353'
  sha256 'e1f1e5bc118160899b4c5297c06067cf0ae88dfff411afe190e4b00f2b0fde41'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '337cfcc21942808adb2b1561c8e9ec3110a5714b2d66ffb4d576763bfd9c76e4'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
