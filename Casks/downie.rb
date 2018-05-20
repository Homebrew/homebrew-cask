cask 'downie' do
  version '3.3.3,1824'
  sha256 '55f1172da4d8a0a7caba0ce714c333a88184e4e3da3d312d948cd6c65379f597'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '8df6d813be754d35119ea2c979ee898741f9ec976a26c4adf73fed01337cb4ef'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
