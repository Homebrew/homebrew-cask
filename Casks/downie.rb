cask 'downie' do
  version '3.3.5,1830'
  sha256 'fce2a64cd7aa65ac22fe811c6f5e98e2744e5319bfb4f83699eb22a079bf3788'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
