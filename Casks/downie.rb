cask 'downie' do
  version '3.4.3,1871'
  sha256 'ca01d479c69898aa575eba0724cf441ec73afef1309150edbb79716d55ab58b2'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
