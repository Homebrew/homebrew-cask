cask 'downie' do
  version '3.4,1852'
  sha256 '30a101b167c4ae5b0a7f4c097824d5b8a8083762d10a2f71735d46c7a6a23abb'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
