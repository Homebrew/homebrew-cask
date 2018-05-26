cask 'downie' do
  version '3.3.4,1828'
  sha256 '4eb88ed3c35d877f4b21c37ca826dd3902da2e8d028ae2fe837b850a128ebe4d'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'a0183f1854510c3a74be875a27f990fd1f2f511871228bd10cbf923f855a460e'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
