cask 'downie' do
  version '3.3.6,1833'
  sha256 '087ee212dc38a83fd3e03e295df409e91196e97b06ddd84cd80cd0564f2fcc96'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
